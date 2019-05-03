import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedGlassDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // 约束盒子,添加额外的限制条件
          ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: Image.network(
                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1556857071532&di=be29c149ddf42983487d8c0417fd6dbf&imgtype=0&src=http%3A%2F%2Fpic15.nipic.com%2F20110813%2F1993003_205156492136_2.jpg'),
          ),
          Center(
            // 可裁切的矩形
            child: ClipRect(
              // 背景过滤器
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                // 透明
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 500,
                    height: 700,
                    //盒子修饰器
                    decoration: BoxDecoration(color: Colors.grey.shade200),
                    child: Center(
                      child: Text(
                        '毛玻璃效果',
                        style: Theme.of(context).textTheme.display3,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
