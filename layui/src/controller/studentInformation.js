


layui.define(['table', 'form'], function(exports){
    var $ = layui.$
        ,admin = layui.admin
        ,view = layui.view
        ,table = layui.table
        ,form = layui.form
        ,setter=layui.setter
        ,true_url=layui.setter.true_url
        ,jwt=layui.data(setter.tableName)['jwt'];
    //用户管理
    table.render({
        elem: '#student-information'
        ,url: true_url+'/getStudentInformation/all' //向服务器请求接口
        ,method:'get'
        ,headers:{
          "jwt":jwt
        }
        ,parseData:function (res) {
            var meta=res['meta'];
            var data=res['data'];
            return {
                "code":0
                ,"data":data['students']
                ,"msg":meta['msg']
                ,"count":data['count']

            }
        }
        ,cols: [[
            {type: 'checkbox', fixed: 'left'}
            ,{field: 'studentId', width: 100, title: '学号', sort: true}
            ,{field: 'studentName', title: '姓名', minWidth: 100}
            ,{field: 'studentSex', title: '性别', minWidth: 20,templet: function (d) {
              return d.studentSex==0?'男':'女';
                }}
            ,{field: 'graduationYear', title: '毕业时间', width: 100}
            ,{field: 'collegeName', title: '学院'}
            ,{field: 'specialtyName', title: '专业'}
            ,{field: 'className', title: '班级'}
            ,{field: 'idCardNum', title: '身份证号'}
            ,{field: 'email', title: '邮箱'}
            ,{field:'phone', title:'电话'}
            ,{title: '操作', width: 150, align:'center', fixed: 'right', toolbar: '#student-information-bar'}
        ]]
        ,page: true
        ,limit: 30
        ,height: 'full-320'
        ,text: '对不起，加载出现异常！'
    });

    //监听工具条
    table.on('tool(student-information)', function(obj){
        var data = obj.data;
        console.log(data);
        if(obj.event === 'del'){
            layer.prompt({
                formType: 1
                ,title: '敏感操作，请验证口令'
            }, function(value, index){
                layer.close(index);

                layer.confirm('真的删除行么', function(index){
                    obj.del();
                    layer.close(index);
                });
            });
        } else if(obj.event === 'edit'){
            admin.popup({
                title: '编辑用户'
                ,area: ['500px', '450px']
                ,id: 'LAY-popup-user-add'
                ,success: function(layero, index){
                    console.log(this.id+"《《《《-this id");
                    //view(this.id).render('studentform',data);
     /*               view(this.id).render('students/studentform', data).done(function(){
                        form.render(null, 'student-info-form');

                        //监听提交
                 /!*       form.on('submit(LAY-user-front-submit)', function(data){
                            var field = data.field; //获取提交的字段

                            //提交 Ajax 成功后，关闭当前弹层并重载表格
                            //$.ajax({});
                            layui.table.reload('LAY-user-manage'); //重载表格
                            layer.close(index); //执行关闭
                        });*!/
                    });*/
                }
            });
        }
    });


    exports('studentInformation', {})
});