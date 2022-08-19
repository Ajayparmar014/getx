import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            // Text(
            //   'This is Next Screen',
            //   style: TextStyle(
            //       fontSize: 20,
            //       fontWeight: FontWeight.bold,
            //       color: Colors.black),
            // ),
            Text(
              "${Get.parameters['someValue']}",
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
