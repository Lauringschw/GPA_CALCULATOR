import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newgpacalculator/class_container.dart';
import 'constants.dart';
import 'add_new_subject.dart';
import 'display_features_new.dart';
import 'on_off_button.dart';

class InputPage extends StatefulWidget {
  static List<ClassContainer> classes = []; //stores the ClassContainer widges in this list when pressed on the 'New Subject' button
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(50),
                )),
            backgroundColor: Color(0xFF3E75A4),
            centerTitle: true,
            title: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text(
                'GPA CALCULATOR',
                style: kAppBarTitle,
              ),
            ),
          ),
        ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            DisplayFeatures(),
            GradeButton(),
            AddNewSubject(
              onPressed: (){
                setState(() {
                  if(InputPage.classes.length < 14){ //if there are more then 14 containers on the screen, stop
                    InputPage.classes.add(ClassContainer( //add a ClassContainer from the class_container file in the classes list
                    number: InputPage.classes.length,
                    onPressed: (){
                      setState(() {
                        //I'm not sure how I should do this, to delete the specific ClassContainer container
                        print('deleted');
                      });
                    }
                  ));
                  }
                });
              }, //onPressed
            ),
          ]..addAll(InputPage.classes),//add the added ClassContainer to the page
        ),
      ),
    );
  }
}
