import 'package:flutter/material.dart';

class CustomeRoute extends PageRouteBuilder {
  final Widget widget;

  CustomeRoute(this.widget)
      : super(
            transitionDuration: Duration(seconds: 2),
            // 页面构造器 需要接受三个参数
            pageBuilder: (
              BuildContext context,
              Animation<double> animation1,
              Animation<double> animation2,
            ) {
              return widget;
            },
            transitionsBuilder: (BuildContext context,
                Animation<double> animation1,
                Animation<double> animation2,
                Widget child) {
              return FadeTransition(
                  // 过度透明度效果
                  opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                      parent: animation1, curve: Curves.fastOutSlowIn)),
                child: child,
              );
            });
}
