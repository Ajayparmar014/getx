import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx2/navigation/nameroute/namerouteapp.dart';
import 'package:getx2/navigation/nameroute/nameroutehome.dart';
import 'package:getx2/navigation/nameroute/nextscreen.dart';
import 'package:getx2/navigation/nameroute/unknowroute.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Navgition',
      initialRoute: '/',
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(
          name: '/',
          page: () => const NameRouteApp(),
        ),
        GetPage(
          name: '/home',
          page: () => const NameRouteHome(),
        ),
        GetPage(
          name: '/NextScreen',
          page: () => const NextScreen(),
          //to control the transition route wise
          //if specified will override the default transition
          transition: Transition.leftToRight,
        ),
        // GetPage(
        //   name: '/NextScreen/:someValue',
        //   page: () => const NextScreen(),
        //   transition: Transition.leftToRight,
        // ),
      ],
      unknownRoute: GetPage(
        name: '/notfound',
        page: () => const UnknowRoute(),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Name Route Navigation'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/home');
                  // Get.toNamed('/home');
                  // go to home screen but no option to return to previous screen
                  // Get.offNamed('/home');
                  //Go to home screen and cancel all previous screens/route
                  // Get.offAllNamed('/home');
                  //Dynamic URL Link
                  // Get.toNamed('/home?channel=Ripple Code&content=Flutter Getx');
                },
                child: const Text('Go to Home'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed("/x");
                },
                child: const Text('Unknow Route'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
