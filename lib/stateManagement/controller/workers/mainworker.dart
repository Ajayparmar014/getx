import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'workcontroller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  WorkerController workerController = Get.put(WorkerController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Workers'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  workerController.increment();
                },
                child: const Text('Increment'),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  onChanged: (val) {
                    workerController.increment();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
