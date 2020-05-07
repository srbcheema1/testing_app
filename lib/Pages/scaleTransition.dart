import 'package:flutter/material.dart';

class MyScaleTransition extends StatefulWidget {
  @override
  _MyScaleTransitionState createState() => _MyScaleTransitionState();
}

class _MyScaleTransitionState extends State<MyScaleTransition> with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController controller;
  bool full = false;
  @override
  initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = Tween(begin: 0.0, end: 1.0).animate(controller)
    ..addListener((){
      // print(" srb value of animation is " + animation.value.toString());
    });
  }

  toggle() {
    if(full)controller.reverse();
    else controller.forward();
    full = !full; // no need of set state, so no rebuild
  }

  @override
  Widget build(BuildContext context) {
    print("animation val " + animation.value.toString());
    return Scaffold(
      appBar: AppBar(title: Text("Test App"),),
      body: Center(
        child: ScaleTransition(
          scale: animation,
          child: Text("Test"),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: toggle,
        child: Icon(Icons.add),
      ), 
    );
  }
}

class MyScaleTransitionTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      child: Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            children: <Widget>[
              Icon(Icons.zoom_out),
              Text("Scale Transition"),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          )
        ),
      ),
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return MyScaleTransition();
          }),
        );
      }
    );
  }
}