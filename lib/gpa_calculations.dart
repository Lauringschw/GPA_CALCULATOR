import 'input_page.dart';

class Calculator{

  //adds the amount to totalgrade (if it's regular, add a specific number, else add a different number)
  static double gradeNumber(){
    double totalgrade = 0;
    for(int i = 0; i < InputPage.classes.length; i++){
      if(InputPage.classes[i].getIndex() == 0){
        if(InputPage.classes[i].getSelectedCredit()  == 'Regular'){ //regular
          totalgrade = totalgrade + 0;
        } else { //IB, Honor, AP
          totalgrade = totalgrade + 1;
        }
      } //F

      if(InputPage.classes[i].getIndex() == 1){
        if(InputPage.classes[i].getSelectedCredit()  == 'Regular'){ //regular
          totalgrade = totalgrade + 0.7;
        } else { //IB, Honor, AP
          totalgrade = totalgrade + 1.70;
        }
      } //D-

      if(InputPage.classes[i].getIndex() == 2){
        if(InputPage.classes[i].getSelectedCredit()  == 'Regular'){ //regular
          totalgrade = totalgrade + 1;
        } else { //IB, Honor, AP
          totalgrade = totalgrade + 2;
        }
      } //D

      if(InputPage.classes[i].getIndex() == 3){
        if(InputPage.classes[i].getSelectedCredit()  == 'Regular'){ //regular
          totalgrade = totalgrade + 1.3;
        } else { //IB, Honor, AP
          totalgrade = totalgrade + 2.3;
        }
      } //D+

      if(InputPage.classes[i].getIndex() == 4){
        if(InputPage.classes[i].getSelectedCredit()  == 'Regular'){ //regular
          totalgrade = totalgrade + 1.7;
        } else { //IB, Honor, AP
          totalgrade = totalgrade + 2.7;
        }
      } //C-

      if(InputPage.classes[i].getIndex() == 5){
        if(InputPage.classes[i].getSelectedCredit()  == 'Regular'){ //regular
          totalgrade = totalgrade + 2.0;
        } else { //IB, Honor, AP
          totalgrade = totalgrade + 3.0;
        }
      } //C

      if(InputPage.classes[i].getIndex() == 6){
        if(InputPage.classes[i].getSelectedCredit()  == 'Regular'){ //regular
          totalgrade = totalgrade + 2.3;
        } else { //IB, Honor, AP
          totalgrade = totalgrade + 3.3;
        }
      } //C+

      if(InputPage.classes[i].getIndex() == 7){
        if(InputPage.classes[i].getSelectedCredit()  == 'Regular'){ //regular
          totalgrade = totalgrade + 2.7;
        } else { //IB, Honor, AP
          totalgrade = totalgrade + 3.7;
        }
      } //B-

      if(InputPage.classes[i].getIndex() == 8){
        if(InputPage.classes[i].getSelectedCredit()  == 'Regular'){ //regular
          totalgrade = totalgrade + 3.0;
        } else { //IB, Honor, AP
          totalgrade = totalgrade + 4.0;
        }
      } //B

      if(InputPage.classes[i].getIndex() == 9){
        if(InputPage.classes[i].getSelectedCredit()  == 'Regular'){ //regular
          totalgrade = totalgrade + 3.3;
        } else { //IB, Honor, AP
          totalgrade = totalgrade + 4.3;
        }
      } //B+

      if(InputPage.classes[i].getIndex() == 10){
        if(InputPage.classes[i].getSelectedCredit()  == 'Regular'){ //regular
          totalgrade = totalgrade + 3.7;
        } else { //IB, Honor, AP
          totalgrade = totalgrade + 4.7;
        }
      } //A-

      if(InputPage.classes[i].getIndex() == 11){
        if(InputPage.classes[i].getSelectedCredit()  == 'Regular'){ //regular
          totalgrade = totalgrade + 4.0;
        } else { //IB, Honor, AP
          totalgrade = totalgrade + 5.0;
        }
      } //A

      if(InputPage.classes[i].getIndex() == 12){
        if(InputPage.classes[i].getSelectedCredit()  == 'Regular'){ //regular
          totalgrade = totalgrade + 4.3;
        } else { //IB, Honor, AP
          totalgrade = totalgrade + 5.3;
        }
      } //A+
    }
    return totalgrade; //return totalgrade
  }

  //divide totalGrade by how many widgets are present on the screen
  static String calculationGPA() {
    int totalUnits = InputPage.classes.length;
    double totalGPA = gradeNumber() / totalUnits;
    if (totalUnits == 0) { //if there are zero widgets on the screen
      return '0'; //return 0
    } else{ //otherwise
      return totalGPA.toStringAsPrecision(3); //show 3 deciman numbers
    }
  }

  //get the numbers which represent the grade (0 = F, 1 = D-, 12 = A+)
  static int calculationGrade(){
    int totalUnits = InputPage.classes.length;
    double totalGrade = 0;
    for(int i = 0; i < InputPage.classes.length; i++){
      totalGrade = totalGrade + InputPage.classes[i].getIndex().toDouble();
    }
    double calc = totalGrade / totalUnits; //divide it to get the mean
    if(totalGrade == 0){ //if there are no widgets on the screen
      return 0; //return 0
    } else { //otherwise
      return calc.round(); //return the mean but rounded
    }
  }

  //returns the calculated mean and returns the grade as a String (1 = D-, 2 = D, etc)
  static String gradeString() {
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
    return grades[calculationGrade()];
  }
}