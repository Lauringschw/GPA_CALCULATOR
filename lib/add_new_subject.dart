import 'package:flutter/material.dart';

class AddNewSubject extends StatefulWidget {
  AddNewSubject({@required this.onPressed});
  final Function onPressed;
  @override
  _AddNewSubjectState createState() => _AddNewSubjectState();
}

class _AddNewSubjectState extends State<AddNewSubject> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.add, size: 23, color: Color(0x73979696),),
          Text('New Subject', style: TextStyle(fontSize: 20, color: Color(0x73979696)),),
        ],
      ),
          margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
      color: Color(0x70B6CBB6),
      borderRadius: BorderRadius.circular(24.0),
      ),
      ),
    );
  }
}
