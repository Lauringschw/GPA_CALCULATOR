import 'package:flutter/material.dart';

class GradeButton extends StatefulWidget {
  List<bool> _selections = List.generate(2, (index) => false);
  @override
  _GradeButtonState createState() => _GradeButtonState();
}

class _GradeButtonState extends State<GradeButton> {


  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      children: <Widget>[
        Text(
          '9/10',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Text(
          '11/12',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ],
      isSelected: widget._selections,
      onPressed: (int index) {
        setState(() {
          widget._selections[index] = !widget._selections[index];
        });
      },
      color: Colors.green,
      selectedColor: Colors.orange,
      fillColor: Colors.green,
      renderBorder: false,
      borderRadius: BorderRadius.circular(30),
      borderWidth: 5,
      borderColor: Colors.orange,
    );
  }
}
