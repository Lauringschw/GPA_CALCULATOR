import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newgpacalculator/gpa_calculations.dart';
import 'gpa_calculations.dart';
import 'constants.dart';
import 'input_page.dart';

class DisplayFeatures extends StatefulWidget {
  @override
  _DisplayFeaturesState createState() => _DisplayFeaturesState();
}

class _DisplayFeaturesState extends State<DisplayFeatures> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 10, 10, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Flexible(
            flex: 2,
            child: Column(
              children: <Widget>[
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Your GPA',
                      style: kDisplayFeatures,
                    )),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      Calculator.calculationGPA(),
                      style: kDisplayFeaturesUnderNeath,
                    )),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Column(
              children: <Widget>[
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Total Units',
                      style: kDisplayFeatures,
                    )),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      InputPage.classes.length.toString(),
                      style: kDisplayFeaturesUnderNeath,
                    )),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Column(
              children: <Widget>[
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Letter',
                      style: kDisplayFeatures,
                    )),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      Calculator.gradeString(),
                      style: kDisplayFeaturesUnderNeath,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}