import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App Flutter',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'First App Flutter :)'),
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
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _first = 0;
  int _second = 0;

  void _incrementFirst() {
    setState(() {
      _first++;
    });
  }

  void _decrementFirst() {
    setState(() {
      _first--;
    });
  }

  void _incrementSecond() {
    setState(() {
      _second++;
    });
  }

  void _decrementSecond() {
    setState(() {
      _second--;
    });
  }

  void _resetAll() {
    setState(() {
      _first = 0;
      _second = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(bottom: 60),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                        "My First App with Flutter :)",
                        style: TextStyle(color: Colors.blue, 
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                        "App Increment and Decrement",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue, 
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.all(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FloatingActionButton(
                          onPressed: _decrementFirst,
                          tooltip: 'Decrement',
                          child: Icon(Icons.exposure_minus_1),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue[100],
                    ),
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.all(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '$_first',
                          style: Theme.of(context).textTheme.headline4,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.all(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FloatingActionButton(
                          onPressed: _incrementFirst,
                          tooltip: 'Increment',
                          child: Icon(Icons.plus_one),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.all(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FloatingActionButton(
                          onPressed: _decrementSecond,
                          tooltip: 'Decrement',
                          child: Icon(Icons.exposure_minus_1),
                          backgroundColor: Colors.red,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.red[100],
                    ),
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.all(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '$_second',
                          style: Theme.of(context).textTheme.headline4,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.all(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FloatingActionButton(
                          onPressed: _incrementSecond,
                          tooltip: 'Increment',
                          child: Icon(Icons.plus_one),
                          backgroundColor: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: _resetAll,
                    tooltip: 'Reset',
                    child: Icon(Icons.replay_rounded),
                    backgroundColor: Colors.green[100],
                    foregroundColor: Colors.black45,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// mainAxisAlignment: MainAxisAlignment.center,
// children: <Widget>[
//   Text(
//     'Pencet salah satu Tombol untuk menambah atau mengurang.',
//   ),
//   Text(
//     '$_counter',
//     style: Theme.of(context).textTheme.headline4,
//   ),
//   Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: <Widget>[
//       FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         foregroundColor: Colors.black,
//         child: Icon(Icons.plus_one),
//       ),
//       FloatingActionButton(
//         onPressed: _decrementCounter,
//         tooltip: 'Decrement',
//         child: Icon(Icons.exposure_minus_1),
//       ),
//       FloatingActionButton(
//         onPressed: _resetCounter,
//         tooltip: 'Reset',
//         child: Icon(Icons.replay_outlined),
//       ),
//     ],
//   ),
// ],
