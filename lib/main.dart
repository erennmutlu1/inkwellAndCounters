import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inkwell',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Inkwell and Counter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '$_counter',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {
                    _incrementCounter();
                  },
                  child: Text("Counter")),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                      highlightColor: Colors.orangeAccent.withOpacity(0.5),
                      splashColor: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      onTap: () {
                        _decrementCounter();
                      },
                      child: Icon(
                        Icons.arrow_circle_down,
                        size: 100,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkResponse(
                      splashColor: Colors.blue,
                      radius: 60,
                      onTap: () {
                        _incrementCounter();
                      },
                      child: Icon(
                        Icons.arrow_circle_up,
                        size: 100,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
