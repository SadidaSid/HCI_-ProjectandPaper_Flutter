import 'package:flutter/material.dart';
import 'dart:math' as Math;
void main() => runApp(new MyApp());
class _CircularLayoutDelegate extends MultiChildLayoutDelegate {
  static const String actionButton = 'BUTTON';
  Offset center;
  final int itemCount;
  final double radius;
  final int counter;

  _CircularLayoutDelegate({
    @required this.itemCount,
    @required this.radius,
    @required this.counter,

  });

  @override
  void performLayout(Size size) {

    center = Offset(size.width / 2, size.height / 2);
    for (int i = 0; i <= itemCount-1; i++) {
      final String actionButtonId = '$actionButton$i';

      if (hasChild(actionButtonId)) {
        final Size buttonSize =
        layoutChild(actionButtonId, BoxConstraints.loose(size));

        if (i == 1) {
          print("source");
          positionChild(
            actionButtonId,
            Offset(
                (center.dx - buttonSize.width / 2),
                (center.dy - buttonSize.height / 2)
            ),
          );
        }
        switch(counter) {
          case 0:
          /*  if (i == 0) {
              print("target1");

              positionChild(
                actionButtonId,
                Offset(
                  (center.dx - buttonSize.width / 2) + (radius) * Math.cos(itemAngle),
                  (center.dy - buttonSize.height / 2) +
                      (radius) * Math.sin(itemAngle),
                ),
              );
            }*/continue;


          case 1:
            if (i == 0) {
              print("target1");
               double itemAngle = _calculateItemAngle(0);
              positionChild(
                actionButtonId,
                Offset(
                  (center.dx - buttonSize.width / 2) + (radius) * Math.cos(itemAngle),
                  (center.dy - buttonSize.height / 2) +
                      (radius) * Math.sin(itemAngle),
                ),
              );
            }continue;


          case 2:
            if (i == 0) {
              print("target2");
               double itemAngle = _calculateItemAngle(1);
              positionChild(
                actionButtonId,
                Offset(
                  (center.dx - buttonSize.width / 2) + (radius) * Math.cos(itemAngle),
                  (center.dy - buttonSize.height / 2) +
                      (radius) * Math.sin(itemAngle),
                ),
              );
            }continue;


          case 3:
            if (i == 0) {
              print("target3");
               double itemAngle = _calculateItemAngle(2);
              positionChild(
                actionButtonId,
                Offset(
                  (center.dx - buttonSize.width / 2) + (radius) * Math.cos(itemAngle),
                  (center.dy - buttonSize.height / 2) +
                      (radius) * Math.sin(itemAngle),
                ),
              );
            }continue;


          case 4:
            if (i == 0) {
              print("target4");
               double itemAngle = _calculateItemAngle(3);
              positionChild(
                actionButtonId,
                Offset(
                  (center.dx - buttonSize.width / 2) + (radius) * Math.cos(itemAngle),
                  (center.dy - buttonSize.height / 2) +
                      (radius) * Math.sin(itemAngle),
                ),
              );
            }continue;

          case 5:
            if (i == 0) {
              print("target5");
               double itemAngle = _calculateItemAngle(4);
              positionChild(
                actionButtonId,
                Offset(
                  (center.dx - buttonSize.width / 2) + (radius) * Math.cos(itemAngle),
                  (center.dy - buttonSize.height / 2) +
                      (radius) * Math.sin(itemAngle),
                ),
              );
            };continue;

          case 6:
            if (i == 0) {
              print("target6");
               double itemAngle = _calculateItemAngle(5);
              positionChild(
                actionButtonId,
                Offset(
                  (center.dx - buttonSize.width / 2) + (radius) * Math.cos(itemAngle),
                  (center.dy - buttonSize.height / 2) +
                      (radius) * Math.sin(itemAngle),
                ),
              );
            }continue;

          case 7:
            if (i == 0) {
              print("target7");
               double itemAngle = _calculateItemAngle(6);

              positionChild(
                actionButtonId,
                Offset(
                  (center.dx - buttonSize.width / 2) + (radius) * Math.cos(itemAngle),
                  (center.dy - buttonSize.height / 2) +
                      (radius) * Math.sin(itemAngle),
                ),
              );
            }continue;

          case 8:
            if (i == 0) {
              print("target8");
               double itemAngle = _calculateItemAngle(7);

              positionChild(
                actionButtonId,
                Offset(
                  (center.dx - buttonSize.width / 2) + (radius) * Math.cos(itemAngle),
                  (center.dy - buttonSize.height / 2) +
                      (radius) * Math.sin(itemAngle),
                ),
              );
            }continue;
        }



      }}


  }
  static const double _radiansPerDegree = Math.pi / 180;
  final double _startAngle = -90.0 * _radiansPerDegree;
  double _itemSpacing = 360.0 / 8.0;
  double _calculateItemAngle(int index) {
    return _startAngle + index * _itemSpacing * _radiansPerDegree;
  }


  @override
  bool shouldRelayout(_CircularLayoutDelegate oldDelegate) =>
      itemCount != oldDelegate.itemCount ||
          radius != oldDelegate.radius ;
}






class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'HCI demo application'),
    );
  }
}



class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;


  @override
  _MyHomePageState createState() => new _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  static int screen=0;
  static int _counter = 0;





  void _incrementCounter() {
    int value=_counter;
    if(value==1){
      setState(() {
        _counter--;

        print("counter:$_counter");
        print("screen:$screen");


        // This call to setState tells the Flutter framework that something has
        // changed in this State, which causes it to rerun the build method below
        // so that the display can reflect the updated values. If we changed
        // _counter without calling setState(), then the build method would not be
        // called again, and so nothing would appear to happen.


      });

      }
    else if(value==0) {
      setState(() {
      if(screen==8)
        { screen=0;}
      _counter++;
      screen++;
      print("counter:$_counter");
      print("screen:$screen");



      });
    }

  }

  @override
  Widget build(BuildContext context) {

     List<LayoutId> products=new List<LayoutId>();

     if (screen>0 && _counter>0) {
       for (int i = 0; i <= 1; i++) {
         int TargetNo = screen;
         String ButtonText = 'target' + '$TargetNo';
         if (i == 1) {
           ButtonText = 'source';
         }

         products.add(LayoutId(
           id: 'BUTTON$i',
           child: new FloatingActionButton(
               onPressed: _incrementCounter, child: new Text(ButtonText)),
         ));
       }
     }
     else
       {  int m=1;
       String ButtonText = 'source';
         products.add(LayoutId(
           id: 'BUTTON$m',
           child: new FloatingActionButton(
               onPressed: _incrementCounter, child: new Text(ButtonText)),
         ));

       }
     print("screen is $screen");



     //,color: Colors.black,shape:new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),
      body: new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: new CustomMultiChildLayout(
          delegate: _CircularLayoutDelegate(
            itemCount: 2,
            radius: 130.0,
            counter:screen,
          ),
          children:products
        ),
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}





