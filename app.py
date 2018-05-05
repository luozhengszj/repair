# author:luozheng
# time:2018-04-29
# make for check and record the repairs
from flask import Flask, jsonify, render_template, request,send_from_directory,abort
from flask_bootstrap import Bootstrap
from data import selectother,insert,selectall,updatestatus,searchdata,gettimedata
import xlwt
import datetime

app = Flask(__name__)
app.config['BOOTSTRAP_SERVE_LOCAL'] = True
bootstrap = Bootstrap(app)


@app.route('/admin')
def admin():
    return render_template('admin.html')


@app.route('/jsondata', methods=['POST', 'GET'])
def repairs():
    """
     请求的数据源，该函数模拟数据库中存储的数据，返回以下这种数据的列表：
    {'name': '香蕉', 'id': 1, 'price': '10'}
    {'name': '苹果', 'id': 2, 'price': '10'}
    """
    if request.method == 'POST':
        print('post')
    if request.method == 'GET':
        info = request.values
        limit = info.get('limit', 10)  # 每页显示的条数
        offset = info.get('offset', 0)  # 分片数，(页码-1)*limit，它表示一段数据的起点
        ajax_flag = info.get('ajax_flag',0)  # 每页显示的条数
        # flag = info.get('flag')  # 每页显示的条数
        data = []
        tmp = ();
        # if flag == '4':
        #     nowtime = info.get('nowtime')  # 每页显示的条数
        #     nexttime = int(nowtime)+1
        #     tmp = gettimedata(str(nowtime)+'0000',str(nexttime)+'0000')

        # else:
        # print(ajax_flag)
        if len(ajax_flag) > 1:
            if len(ajax_flag) < 7:
                tmp = searchdata(ajax_flag)
            elif len(ajax_flag) == 17:
                tmp = gettimedata(ajax_flag)
        elif ajax_flag == '5':
            nowtime = info.get('nowtime')
            nexttime = int(nowtime)+1
            tmp = gettimedata(str(nowtime)+'0000',str(nexttime)+'0000')
        else:
            tmp = selectall(ajax_flag)
        i = 1
        for st in tmp:
            d = {}
            d['num'] = i
            d['id'] = str(st[0]) + '-' + str(st[1])  # 0代表待修；1代表修理中；2代表待领；3代表已领,前者代表ID，后者代表修理标志
            d['type'] = st[2]
            d['brand'] = st[3]
            d['reason'] = st[4]
            d['depart'] = st[5]
            d['class'] = st[6]
            d['suser'] = st[7]  # 送修人
            d['tel'] = st[8]
            d['user'] = st[9]
            time = st[10]  # 送修时间
            if len(time) > 10:
                d['stime'] = time[4:6] + '-' + time[6:8] + " " + time[8:10] + ':' + time[10:12]  # 送修时间
            d['luser'] = st[11]
            time = st[12]
            if len(time) > 10:
                d['ltime'] = time[4:6] + '-' + time[6:8] + " " + time[8:10] + ':' + time[10:12]  # 领取时间
            d['way'] = st[13]
            d['note'] = st[14]
            data.append(d)
            i = i + 1
        # print('get', limit)
    return jsonify({'total': len(data), 'rows': data[int(offset):(int(offset) + int(limit))]})
    # 注意total与rows是必须的两个参数，名字不能写错，total是数据的总长度，rows是每页要显示的数据,它是一个列表
    # 前端根本不需要指定total和rows这俩参数，他们已经封装在了bootstrap table里了


@app.route('/ajax/data', methods=['POST', 'GET'])
def other():
    """
     请求的数据源，该函数模拟数据库中存储的数据，返回以下这种数据的列表：
    {'name': '香蕉', 'id': 1, 'price': '10'}
    {'name': '苹果', 'id': 2, 'price': '10'}
    """
    row = ''
    if request.method == 'POST':
        print('post')
    if request.method == 'GET':
        info = request.values
        flag = info.get('flag')
        if flag == '1':
            flag_type = info.get('flag_type')
            flag_num = info.get('flag_num')
            row = selectother(flag_num,flag_type)
            return row
        elif flag == '2':
            user = info.get('user')
            suser = info.get('suser')
            tel = info.get('tel')
            sel_type = info.get('sel_type')
            sel_brand = info.get('sel_brand')
            sel_dep = info.get('sel_dep')
            sel_class = info.get('sel_class')
            sel_pro = info.get('sel_pro')
            row = insert(user, suser,tel,sel_type,sel_brand,sel_dep,sel_class,sel_pro)
            return row
        elif flag == '3':
            # data = {'flag': 3, 'id': id, 'xl_flag': flag, 'note': note, 'way': way, 'luser': luser}
            id = info.get('id')
            xl_flag = info.get('xl_flag')
            xl_flag = int(xl_flag)+1
            note = info.get('note')
            way = info.get('way')
            luser = info.get('luser')
            row = updatestatus(id,xl_flag,way,note,luser)
            return row
        elif flag == '4':
            # 导出数据
            row = selectall('4')
            # 实例化一个Workbook()对象(即excel文件)
            wbk = xlwt.Workbook(encoding='utf-8',style_compression=0)
            # 新建一个名为Sheet1的excel sheet。此处的cell_overwrite_ok =True是为了能对同一个单元格重复操作。
            sheet = wbk.add_sheet('维修记录',cell_overwrite_ok =True)
            nowTime = datetime.datetime.now().strftime('%Y-%m-%d:%H:%M')
            # 遍历result中的没个元素。
            for i in range(len(row)):
                num = 1
                for j in range(len(row[i])):
                    if(j ==0 ):
                        sheet.write(i, j, num)
                    elif (j == 1):
                        if row[i][j] == 0:
                            sheet.write(i, j, '待修')
                        elif row[i][j] == 1:
                            sheet.write(i, j, '修理中')
                        elif row[i][j] == 2:
                            sheet.write(i, j, '待领')
                        else:
                            sheet.write(i, j, '已领')
                    # 将每一行的每个元素按行号i,列号j,写入到excel中。
                    else:
                        sheet.write(i,j,row[i][j])
                num = num+1
            row =str(len(row))
            file_dir = os.path.join(os.path.abspath(os.path.dirname(__file__)), 'upload')
            if not os.path.exists(file_dir):
                os.makedirs(file_dir)
            wbk.save(os.path.join(file_dir,'送修记录.xls'))
            # directory = 'upload'
            return "http://127.0.0.1:5000/upload/送修记录.xls"


            # 注意total与rows是必须的两个参数，名字不能写错，total是数据的总长度，rows是每页要显示的数据,它是一个列表
        # 前端根本不需要指定total和rows这俩参数，他们已经封装在了bootstrap table里了


@app.route('/')
def user():
    return render_template('repairs.html')

@app.route('/upload/<filename>')
def downfile(filename):
    return send_from_directory('upload', filename, as_attachment=True)


@app.errorhandler(404)
def page_not_found(self):
    return render_template('404.html'), 404


if __name__ == '__main__':
    app.run(debug=True)
