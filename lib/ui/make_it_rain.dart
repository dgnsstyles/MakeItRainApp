import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget{
  State<StatefulWidget> createState(){
    return new MakeItRainState();
  }
}

class MakeItRainState extends State<MakeItRain>{

  int _moneyCounter = 0;

  void _rainMoney() {
    setState(() {
      _moneyCounter = _moneyCounter + 100;
    });

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Make it Rain"),
        backgroundColor: Colors.lightGreen,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Center(
              child:  new Text("Hazte Rico",
                style: new TextStyle(color: Colors.grey.shade700, fontWeight: FontWeight.w400,
                    // ignore: undefined_getter
                    fontSize: 35.0),
              ),
            ),
            new Expanded(
                child: new Center(
                  child: new Text('\$$_moneyCounter',
                    style: new TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 46.9,
                      fontWeight: FontWeight.w800
                    ),),
                )),
            new Expanded(
                child: new Center(
                  child: new FlatButton(
                      color: Colors.lightGreen,
                      textColor: Colors.white70,
                      onPressed: _rainMoney,
                      child: new Text("Let it Rain!!",
                      style: new TextStyle( fontSize: 19.9),)),
                ))

          ],
        ),
      ),
    );
  }
}