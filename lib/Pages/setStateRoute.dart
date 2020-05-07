import 'package:flutter/material.dart';

class SetStateRoute extends StatefulWidget {
  @override
  _SetStateRouteState createState() => _SetStateRouteState();
}

class _SetStateRouteState extends State<SetStateRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Set State"),),
      body: Column(children: <Widget>[ MyWidget1(),MyWidget2(),],),
      floatingActionButton: FloatingActionButton(onPressed: ()=>setState((){}),), 
    );
  }
}

class MyWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) { print("widget builds 1");
    return Column(children: <Widget>[MyWidget1o1(),MyWidget1o2(),],);
  }
} 
class MyWidget1o1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) { print("widget builds 1.1");
    return Container(height: 100, color: Colors.orange,);
  }
}
class MyWidget1o2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) { print("widget builds 1.2");
    return Container(height: 100,);
  }
}
class MyWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) { print("widget builds 2");
    return Container(height: 100, color: Colors.green,);
  }
}

// how things build in setState

class SetStateTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      child: Container(
        color: Colors.red,
        child: Center(
          child: Column(
            children: <Widget>[
              Icon(Icons.storage),
              Text("Set State"),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          )
        ),
      ),
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return SetStateRoute();
          }),
        );
      }
    );
  }
}