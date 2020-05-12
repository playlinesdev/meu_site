import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: MyHomePage(title: 'Site Playlines - Aula 1'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: _body());
  }

  _body() {
    return Stack(
      children: <Widget>[
        Positioned(
          left: 20,
          top: 20,
          child: Card(
            child: Container(
              width: 300,
              height: 300,
              child: Center(
                child: Text('Este é o nosso site'),
              ),
            ),
          ),
        )
      ],
    );
  }
}
