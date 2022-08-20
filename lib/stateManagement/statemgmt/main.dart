// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx2/stateManagement/statemgmt/student.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  var students = Students(name: "John", age: 28).obs;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'StateManagement',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('State Management'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "Name is ${students.value.name}",
                  style: const TextStyle(fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // if individual variable are observable
                        // students.name.value = students.name.value.toUpperCase();

                        //if entire class is observable
                        students.update((student) {
                          student!.name = student.name.toString().toUpperCase();
                        });
                      },
                      child: const Text('Upper Case'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // students.name.value = students.name.value.toLowerCase();
                        students.update((val) {
                          val!.name = val.name.toString().toLowerCase();
                        });
                      },
                      child: const Text('Lower Case'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
