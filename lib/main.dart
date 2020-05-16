import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int content = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _home(),
            _mainContent(),
            _whoWeAre(),
          ],
        ),
      ),
      body: _body(),
    );
  }

  _getColor() {
    switch (content) {
      case 0:
        return Colors.white;
      case 1:
        return Colors.blueGrey;
      case 2:
        return Colors.redAccent;
      default:
        return Colors.yellow;
    }
  }

  _body() => Center(
        child: Card(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.85,
            height: MediaQuery.of(context).size.height * 0.85,
            child: Container(color: _getColor()),
          ),
        ),
      );

  _home() => FlatButton.icon(
        onPressed: () {
          setState(() {
            content = 0;
          });
        },
        icon: Icon(Icons.home),
        label: Text('Home'),
      );

  _mainContent() => FlatButton.icon(
      onPressed: () {
        setState(() {
          content = 1;
        });
      },
      icon: Icon(Icons.vpn_lock),
      label: Text('Conteúdo Principal'));

  _whoWeAre() => FlatButton.icon(
      onPressed: () {
        setState(() {
          content = 2;
        });
      },
      icon: Icon(Icons.supervised_user_circle),
      label: Text('Quem somos'));
}
