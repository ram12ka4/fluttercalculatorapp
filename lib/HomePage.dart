import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, result = 0;

  final TextEditingController t1 = new TextEditingController();
  final TextEditingController t2 = new TextEditingController();

  void _doAdd() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 + num2;
    });
  }

  void _doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 - num2;
    });
  }

  void _doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 * num2;
    });
  }

  void _doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 ~/ num2;
    });
  }

  void _doClear() {
    setState(() {
      result = 0;
      t1.text = '0';
      t2.text = '0';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Calculator'), centerTitle: true),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'Output : $result',
              style: new TextStyle(
                  color: Colors.purple,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            new TextField(
              decoration: new InputDecoration(hintText: 'Enter number 1'),
              keyboardType: TextInputType.number,
              controller: t1,
            ),
            new TextField(
              decoration: new InputDecoration(hintText: 'Enter number 2'),
              keyboardType: TextInputType.number,
              controller: t2,
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text('+'),
                  color: Colors.greenAccent,
                  onPressed: _doAdd,
                ),
                new MaterialButton(
                  child: new Text('-'),
                  color: Colors.greenAccent,
                  onPressed: _doSub,
                )
              ],
            ),
            new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text('*'),
                    color: Colors.greenAccent,
                    onPressed: _doMul,
                  ),
                  new MaterialButton(
                    child: new Text('/'),
                    color: Colors.greenAccent,
                    onPressed: _doDiv,
                  )
                ]),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: new Text('Clear'),
                  color: Colors.greenAccent,
                  onPressed: _doClear,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
