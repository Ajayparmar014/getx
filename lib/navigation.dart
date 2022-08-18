import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx2/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Navigation'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'This is for go to Home Screen',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(
                    const Home(),
                    //for full screen dialog
                    fullscreenDialog: true,
                    // for transition effect
                    transition: Transition.zoom,
                    //for duration transition
                    duration: const Duration(milliseconds: 4000),
                  );
                },
                child: const Text(
                  'Go to Home',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
