// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:assets_app/home_view.dart';
import 'package:flutter/src/material/raised_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Домашняя работа 2'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hey Jude:',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
            _counter % 2 == 0
                ? HomeView(
                    counter: _counter,
                  )
                : Container(),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.green[200],
                child: Row(
                  children: <Widget>[Text('Anna'), Text('20')],
                ),
              ),
            ),
            RaisedButton(
              child: Text('increment $_counter'),
              onPressed: () {
                setState(() {
                  _counter = _counter + 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
