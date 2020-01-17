//导入必要包
//时间 ：2020-1-16
//收获：用下划线来当私有变量的前缀
/*        Container是个容器，需要往里面填东西
          使用Ctrl + B 快捷键查看对象定义
          最终返回的要有material类型的包裹，否则会报错
          输入框用material/TextField 使用decotation属性来定制前缀提示信息等


 时间：2020-17
 目的：调整美化这个登录页面，选择背景图和logo，并添加与后端交互的逻辑

 */
import 'package:flutter/material.dart';

class _Logo_widget extends StatelessWidget{
  //以一种圆润的姿态显示我们的logo
  //状态：粗糙的实现


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        width: 120,
        height: 120,
        child: Icon(Icons.cloud_queue,size: 80,));//现在仅仅云朵Icon吧
  }
}

class _LoginForm_widget extends StatelessWidget {
  //用来提交用户名和密码的表单
  //状态：粗糙的实现


  void _onLogin(){
    //提交表单时验证

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        TextField(
          autofocus: true,
          maxLength: 24,
          maxLengthEnforced: true,
          decoration: InputDecoration(
            labelText: "用户名",
            hintText: "用户名或邮箱或手机号",
            prefixIcon: Icon(Icons.person)
          ),

        ),

        TextField(
          decoration: InputDecoration(
            labelText: "密码",
            hintText: "请输入密码",
            prefixIcon: Icon(Icons.lock)
          ),
          obscureText: true,
          maxLengthEnforced: true,
          maxLength: 24,
        ),

        Padding(
          padding: const EdgeInsets.only(left:120),
          child: Row(
            children: <Widget>[
              Text('还没有账号，快速注册',
                    style:TextStyle(
                      color: Colors.red,
                      fontSize: 15
                    ),
              ),
              IconButton(icon: Icon(Icons.arrow_forward),
                        onPressed: (){},)
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top:25),
          child: ConstrainedBox(
            constraints: BoxConstraints.expand(height: 55.0),
            child: RaisedButton(
              color: Colors.blue,
              onPressed: _onLogin,//当缺失这个属性时会自动用灰色表示该按钮不起作用
              textColor: Colors.white,
              child: Text('登陆',
                          style: TextStyle(fontSize: 25),),
            ),
          ),
        ),
      ],
    )
    ;
  }


}

class login_widget extends StatelessWidget {
  //状态：看起来还行的widget集合
  //登录界面
  //组成：logo,背景，用户名和密码输入框，登录和注册和忘记密码按钮
  //功能：让用户输入用户名和密码以登录app，忘记填密码或用户名应警告，密码错误应该返回并报错


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Container(
        child:Column(
          children: <Widget>[
            _Logo_widget(),
            _LoginForm_widget(),
          ],
        ),
      ),
    );
  }
}