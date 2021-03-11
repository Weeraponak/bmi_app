
import 'package:bmi_app/screens/input_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_app/screens/calculator.dart';


void main() => runApp(Homepage());

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Home to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home Calculator'),
        ),
        body: Container(
        width: 400,
        height: 700,
        decoration: BoxDecoration(
        image: DecorationImage(
        image: NetworkImage(
                  "https://wallpaperaccess.com/full/4191938.jpg"),
        fit: BoxFit.cover,

        ),
        ),
            child: ButtonBar(
            alignment: MainAxisAlignment.center,
            buttonHeight: 150,
            buttonMinWidth: 150,
            children: <Widget>[
            /*Image.network("https://images.unsplash.com/photo-1547721064-da6cfb341d50?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",/*fit: BoxFit.cover,*/),*/
            RaisedButton(
              onPressed: () => {Navigator.push(context,MaterialPageRoute(builder: (context) => InputPage()),)},
              color: Colors.green,
              child: Text('BMI CALCULATOR', style: TextStyle(color: Colors.white),),
            ),
            RaisedButton(
              onPressed: () => {Navigator.push(context,MaterialPageRoute(builder: (context) => CalcApp()),)},
              color: Colors.amber,
              child: Text('CALCULATOR', style: TextStyle(color: Colors.black),),
            ),
            ],
          )
        ),
      ),
    );
  }
}