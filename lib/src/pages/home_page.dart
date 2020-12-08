import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Viewer'),
        centerTitle: true,
      ),
      body: Container(
          child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              onPressed: null,
              child: Text('Open PDF'),
            ),
            RaisedButton(
              onPressed: null,
              child: Text('Open PDF'),
            ),
          ],
        ),
      )),
    );
  }
}
