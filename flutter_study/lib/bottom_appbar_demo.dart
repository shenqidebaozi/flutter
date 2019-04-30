import 'package:flutter/material.dart';
import 'each_view.dart';
class BottomAppBarDemo extends StatefulWidget {
  @override
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  List<Widget> _eachView;
  int _index = 0 ;
  @override
  void initState() {
    // TODO: implement initState
    _eachView = List();
    _eachView..add(Each_View('Home'))..add(Each_View('Page'))..add(Each_View('Eamin'))..add(Each_View('Wc'));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 圆形浮动
      body: _eachView[_index],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
            return Each_View('New Page');
          }));
        },
        tooltip: 'Baozi',
        child: Icon(Icons.camera_alt,color: Colors.white,),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: (){
                setState(() {
                  _index = 0;
                });
              }
            ),
            IconButton(
                icon: Icon(Icons.pages),
                color: Colors.white,
                onPressed: (){
                  setState(() {
                    _index = 1;
                  });
                }
            ),
            IconButton(
                icon: Icon(Icons.email),
                color: Colors.white,
                onPressed: (){
                  setState(() {
                    _index = 2;
                  });
                }
            ),
            IconButton(
                icon: Icon(Icons.wc),
                color: Colors.white,
                onPressed: (){
                  setState(() {
                    _index = 3;
                  });
                }
            ),
          ],
        ),
      ),
    );
  }
}
