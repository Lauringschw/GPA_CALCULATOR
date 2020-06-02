import 'package:flutter/material.dart';

class RoundIconButton extends StatefulWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;

  @override
  _RoundIconButtonState createState() => _RoundIconButtonState();
}

class _RoundIconButtonState extends State<RoundIconButton> {
  @override

  //this is to build the plus and minus buttons
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(
        widget.icon,
        color: Color(0xFFFFE071),
        size: 40,
      ),
      onPressed: widget.onPressed,
      constraints: BoxConstraints.tightFor(
        width: 40.0,
        height: 40.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF415B91),
    );
  }
}
