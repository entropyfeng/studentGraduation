{
  "meta":{
  "success":true
}
  ,"code": 0
  ,"msg": ""
  ,"data": [{
    "name":"students"
    ,"title":"学生管理"
    ,"icon":"layui-icon-friends"
    ,"list":[{
      "name":"information"
        ,"title":"学生信息"
,"jump":"students/information"
    }]
},{
    "name":"departments"
    ,"title":"部门管理"
    ,"icon":"layui-icon-friends"
    ,"list":[{
        "name":"information"
        ,"title":"部门信息"
        ,"jump":"departments/information"
    }
    ,{
        "name":"test"
            ,"title":"测试"
            ,"jump":"departments/test"
        }
    ]
}
  , {
    "name": "set"
    ,"title": "设置"
    ,"icon": "layui-icon-set"
    ,"list": [{
      "name": "user"
      ,"title": "我的设置"
      ,"spread": true
      ,"list": [{
        "name": "info"
        ,"title": "基本资料"
      },{
        "name": "password"
        ,"title": "修改密码"
      }]
    }]
  }]
}