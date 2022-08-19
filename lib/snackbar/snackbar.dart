// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Snackbar"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.snackbar('Snackbar Title', 'I Love You Getx',
                      snackPosition: SnackPosition.BOTTOM,
                      // titleText: const Text(
                      //   'Another override first Titile',
                      // ),
                      // messageText: const Text(
                      //   'Once again love',
                      //   style: TextStyle(
                      //       fontSize: 20,
                      //       fontWeight: FontWeight.bold,
                      //       color: Colors.black),
                      // ),
                      colorText: Colors.white,
                      backgroundColor: Colors.yellow,
                      borderRadius: 40,
                      margin: const EdgeInsets.all(10),
                      // maxWidth: 200,
                      // animationDuration: const Duration(milliseconds: 5000),
                      backgroundGradient: const LinearGradient(
                        colors: [
                          Colors.black,
                          Colors.blue,
                          Colors.black,
                        ],
                      ),
                      borderColor: Colors.yellow,
                      borderWidth: 4,
                      boxShadows: [
                        const BoxShadow(
                          color: Colors.yellow,
                          offset: Offset(5, 5),
                          spreadRadius: 5,
                          blurRadius: 20,
                        ),
                      ],
                      // isDismissible: true,
                      // dismissDirection: DismissDirection.horizontal,
                      // forwardAnimationCurve: Curves.bounceInOut,
                      //how much time snackbar stay on screen
                      duration: const Duration(milliseconds: 8000),
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ),
                      shouldIconPulse: false,
                      leftBarIndicatorColor: Colors.white,
                      mainButton: TextButton(
                        onPressed: () {},
                        child: const Text('Retry'),
                      ),
                      // onTap: (snack) {
                      //   print('snackbar clicked');
                      // },
                      overlayBlur: 5,
                      padding: const EdgeInsets.all(20),
                      showProgressIndicator: true,
                      progressIndicatorBackgroundColor: Colors.green,
                      progressIndicatorValueColor:
                          const AlwaysStoppedAnimation<Color>(Colors.white),
                      reverseAnimationCurve: Curves.bounceInOut,
                      snackbarStatus: (status) {
                    print(status);
                  },
                      userInputForm: Form(
                          child: Row(
                        children: const [Expanded(child: TextField())],
                      )));
                },
                child: const Text('Show Snackbar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
