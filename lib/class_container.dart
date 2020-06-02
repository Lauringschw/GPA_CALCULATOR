import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newgpacalculator/round_icon_button.dart';
import 'constants.dart';

class ClassContainer extends StatefulWidget {
  ClassContainer({this.onPressed, this.number});
  final Function onPressed;
  final int number;

  //get the number of a container
  int getNumber() {
    return number;
  }

  //get the index (changed by the + and - buttons
  int getIndex(){
    return index;
  }

  //get tge selected credit of a container (AP, IB, Regualr)
  String getSelectedCredit() {
    //get selected Credit' string
    return selectedCredit;
  }
  @override
  _ClassContainerState createState() => _ClassContainerState();
}

String selectedCredit = 'Regular';
int index = 7; //7 is a B-

class _ClassContainerState extends State<ClassContainer> {
  List<String> grades = [
    'F',
    'D-',
    'D',
    'D+',
    'C-',
    'C',
    'C+',
    'B-',
    'B',
    'B+',
    'A-',
    'A',
    'A+',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Flexible(
                flex: 7,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(bottom: 0),
                    hintText: 'Class',
                    hintStyle: kClassTitle,
                  ),
                  style: kClassTitle,
                ),
              ),
              Text(widget.number.toString()),
              GestureDetector(
                onTap: widget.onPressed,
                child: Container(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.delete_forever,
                    color: Colors.black,
                    size: 35,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 22),
                child: Text(
                  'Grade (Letter)',
                  style: kSmallText,
                ),
              ),
              Container(
                  padding: EdgeInsets.only(right: 97),
                  child: Text(
                    'Credits',
                    style: kSmallText,
                  )),
            ],
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 17,
              ),
              RoundIconButton(
                icon: Icons.remove,
                onPressed: () {
                  setState(() {
                    if (index != 0) {
                      index--;
                    } else {
                      index = 0;
                    }
                  });
                },
              ),
              Container(
                child: Text(
                  grades[index].toString(),
                  style: kGradeText,
                ),
              ),
              RoundIconButton(
                icon: Icons.add,
                onPressed: () {
                  setState(() {
                    if (index != grades.length - 1) {
                      index++;
                    } else {
                      index = grades.length - 1;
                    }
                  });
                },
              ),
              SizedBox(
                width: 70,
              ),
              Container(
                height: 40,
                width: 100,
                child: DropdownButton<String>(
                  icon: Icon(
                    Icons.arrow_downward,
                    color: Colors.white,
                  ),
                  iconSize: 20,
                  iconDisabledColor: Colors.black45,
                  iconEnabledColor: Colors.black,
                  dropdownColor: Color(0xFF3E75A4),
                  elevation: 16,
                  style: TextStyle(fontSize: 20),
                  underline: Container(height: 0),
                  value: selectedCredit,
                  onChanged: (String newValue) {
                    setState(() {
                      selectedCredit = newValue;
                    });
                  },
                  items: <String>[
                    'Regular',
                    'IB',
                    'AP',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Color(0xFF415B91),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ],
          ),
        ],
      ),
      margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFFFFE071),
        borderRadius: BorderRadius.circular(24.0),
      ),
    );
  }
}
