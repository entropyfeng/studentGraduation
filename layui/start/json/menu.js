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
    }]
}
      ,{
    "name": "user"
    ,"title": "用户"
    ,"icon": "layui-icon-user"
    ,"list": [{
      "name": "user"
      ,"title": "网站用户"
      ,"jump": "user/user/list"
    }, {
      "name": "administrators-list"
      ,"title": "后台管理员"
      ,"jump": "user/administrators/list"
    }, {
      "name": "administrators-rule"
      ,"title": "角色管理"
      ,"jump": "user/administrators/role"
    }]
  }, {
    "name": "set"
    ,"title": "设置"
    ,"icon": "layui-icon-set"
    ,"list": [{
      "name": "system"
      ,"title": "系统设置"
      ,"spread": true
      ,"list": [{
        "name": "website"
        ,"title": "网站设置"
      },{
        "name": "email"
        ,"title": "邮件服务"
      }]
    },{
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