import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx2/stateManagement/controller/uniqueid/uniquecontroller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  UniqueController uniqueController = Get.put(UniqueController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Unique Id"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<UniqueController>(
                //any name we can write of id
                id: 'CountID',
                builder: (controller) {
                  return Text(
                    "The value is ${controller.count}",
                    style: const TextStyle(fontSize: 25),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              GetBuilder<UniqueController>(
                builder: (controller) {
                  return Text(
                    "The value is ${controller.count}",
                    style: const TextStyle(fontSize: 25),
                  );
                },
              ),
              ElevatedButton(
                onPressed: () {
                  uniqueController.increment();
                },
                child: const Text("Increment"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
