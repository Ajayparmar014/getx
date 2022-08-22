import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx2/stateManagement/controller/reactivestatemanager/reactivecontroller.dart';

void main() {
  runApp(const ReActiveState());
}

class ReActiveState extends StatelessWidget {
  const ReActiveState({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    MyController myController = Get.put(MyController());
    return GetMaterialApp(
      title: 'State Management',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Reactive state Management"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetX<MyController>(
                //use this init when you created controller on the top
                // init: MyController(),
                builder: (controller) {
                  return Text(
                    'The Value is ${myController.count}',
                    style: const TextStyle(fontSize: 25),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  //if instance of controller not created on the top
                  // Get.find<MyController>().increment();

                  //when instance of controller is created on the top
                  myController.increment();
                },
                child: const Text('Increment'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    //if instance of controller not created on the top
                    // Get.find<MyController>().decrement();
                    //when instance of controller is created on the top
                    myController.decrement();
                  },
                  child: const Text('Decrement'))
            ],
          ),
        ),
      ),
    );
  }
}
