import 'package:flutter/material.dart';

import 'Pages/scaleTransition.dart';
import 'Pages/setStateRoute.dart';

void main() => runApp(MyApp());
class MyApp extends StatefulWidget{@override _MyAppState createState()=>_MyAppState();}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Testing App"),),
      body: GridView.count(
        children: <Widget>[
          MyTile(child:SetStateTile()),
          MyTile(child:MyScaleTransitionTile()),
          MyTile(child:Text("2")),
          MyTile(child:Text("3")),
          MyTile(child:Text("4")),
          MyTile(child:Text("5")),
          MyTile(child:Text("6")),
          MyTile(child:Text("7")),
          MyTile(child:Text("8")), 
          MyTile(child:Text("9")),
          MyTile(child:Text("0")),
          MyTile(child:Text("1")),
          MyTile(child:Text("2")),
          MyTile(child:Text("3")),
          MyTile(child:Text("4")),
        ],
        crossAxisCount: 2,
      )
    ),
  );
}

class MyTile extends StatelessWidget {
  final Widget child;
  MyTile({@required this.child});
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Container(
          child: Center(child: child,),
          color: Colors.yellow,
        ),
      )
    );
  }
}