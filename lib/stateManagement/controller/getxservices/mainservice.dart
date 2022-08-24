import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx2/statemanagement/controller/getxservices/service.dart';

Future<void> main() async {
  await initServices();
  runApp(const MyApp());
}

Future<void> initServices() async {
  await Get.putAsync(() async => Services());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx Services',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Getx Services"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.find<Services>().increment();
                  },
                  child: const Text('Increment'),
                ),
              ]),
        ),
      ),
    );
  }
}
