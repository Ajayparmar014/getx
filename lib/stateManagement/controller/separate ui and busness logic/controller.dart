import 'package:get/state_manager.dart';

import 'package:get/get.dart';

import 'students.dart';

//mycontroller is define by us it is name of controller
class MyController extends GetxController {
  // var exstudent = ExStudents();
  //make method for actual work
  // void convertToUpperCase() {
  //   exstudent.value.name = exstudent.name.value.toUpperCase();
  // }

  // void convertToLowerCase() {
  //   exstudent.name.value = exstudent.name.value.toLowerCase();
  // }

  //with contructor of exstudents and end add .obs compulsory
  var exstudent = ExStudents(name: "John", age: 28).obs;

  void convertToUpperCase() {
    exstudent.update((valofstudent) {
      valofstudent!.name = valofstudent.name.toString().toUpperCase();
    });
  }

  void convertToLowerCase() {
    exstudent.update((valofstudent) {
      valofstudent!.name = valofstudent.name.toString().toLowerCase();
    });
  }
}
