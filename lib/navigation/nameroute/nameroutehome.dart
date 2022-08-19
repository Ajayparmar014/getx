import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NameRouteHome extends StatelessWidget {
  const NameRouteHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              'This is Home Screen',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.red,
              ),
              onPressed: () {
                // Get.toNamed('/NextScreen');
                //screen navigate with value
                Get.toNamed('/NextScreen/1234');
              },
              child: const Text(
                'Next Screen',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Back to Main Screen'),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Channel name is ${Get.parameters['channel']} and content is ${Get.parameters['content']}",
              style: const TextStyle(
                color: Colors.red,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
