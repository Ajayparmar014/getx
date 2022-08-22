import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx2/stateManagement/controller/getxcontrollerlifecycle/lifecyclecontroller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MyController myController = Get.put(MyController());

  @override
  void initState() {
    myController.increment();
    super.initState();
  }

  @override
  void dispose() {
    myController.isClosed;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Life Cycle Controller",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Getx Controller Life Cycle"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<MyController>(builder: (controller) {
                return Text(
                  "The value is ${controller.count}",
                  style: const TextStyle(fontSize: 25),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
