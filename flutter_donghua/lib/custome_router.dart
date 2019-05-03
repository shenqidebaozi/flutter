import 'package:flutter/material.dart';

class CustomeRoute extends PageRouteBuilder {
  final Widget widget;

  CustomeRoute(this.widget)
      : super(
            transitionDuration: Duration(seconds: 1),
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
//              return FadeTransition(
//                // 过度透明度效果
//                opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
//                  parent: animation1, curve: Curves.fastOutSlowIn)),
//                child: child,
//              );
              // 缩放动画效果
//              return ScaleTransition(
//                scale: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: animation1, curve: Curves.fastOutSlowIn)),
//                child: child,
//              );
              // x旋转架缩放
//              return RotationTransition(
//                turns: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
//                    parent: animation1, curve: Curves.fastOutSlowIn)),
//                child: ScaleTransition(
//                  scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
//                      parent: animation1, curve: Curves.fastOutSlowIn)),
//                  child: child,
//                ),
//              );
              // 左右滑动路由动画
              return SlideTransition(
                position: Tween<Offset>(
                        begin: Offset(-1.0, 0.0), end: Offset(0.0, 0.0))
                    .animate(CurvedAnimation(
                        parent: animation1, curve: Curves.elasticIn)),
                child: child,
              );
            });
}
