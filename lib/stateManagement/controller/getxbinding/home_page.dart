import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx2/statemanagement/controller/getxbinding/home_controller.dart';

class Homes extends StatelessWidget {
  const Homes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homes"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'This is home screen -The value is ${Get.find<HomeController>().count}',
                style: const TextStyle(fontSize: 25),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<HomeController>().increments();
              },
              child: const Text('Increments'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('Back'))
          ],
        ),
      ),
    );
  }
}
