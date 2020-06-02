import 'package:flutter/material.dart';
import 'package:newgpacalculator/class_container.dart';
import 'input_page.dart';
import 'class_container.dart';

class ReloadButton extends StatefulWidget {
  @override
  _ReloadButtonState createState() => _ReloadButtonState();
}

class _ReloadButtonState extends State<ReloadButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: (){
          setState(() {
            InputPage.classes;
            print('f');
          });
        },
          child: Center(
            child: Text(
        'RELOAD BUTTON',
        style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
      ),
          )),
      color: Colors.pink,
      width: double.infinity,
      margin: EdgeInsets.only(left: 20, right: 20),
      height: 40,
    );
  }
}
