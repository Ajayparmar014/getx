import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NameRouteApp extends StatelessWidget {
  const NameRouteApp({Key? key}) : super(key: key);

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
              onPressed: () {},
              child: const Text('Next Screen'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                // Get.back();
                // send data to previous screen must use result as name
                Get.back(result: ',This is data came from home screen');
              },
              child: const Text('Back to Main Screen'),
            ),
            const SizedBox(
              height: 8,
            ),
            // Text(
            //   "${Get.arguments}",
            //   style: const TextStyle(color: Colors.green, fontSize: 20),
            // ),
          ],
        ),
      ),
    );
  }
}
