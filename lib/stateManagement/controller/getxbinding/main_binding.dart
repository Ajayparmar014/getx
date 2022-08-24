import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx2/statemanagement/controller/getxbinding/binding_controller.dart';
import 'package:getx2/statemanagement/controller/getxbinding/home_controller_binding.dart';
import 'package:getx2/statemanagement/controller/getxbinding/myappcontrollerbinding.dart';

import 'home_page.dart';

void main() {
  MyAppControllerBinding().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialBinding: AllControllerBinding(),
      title: 'Binding',
      // getPages: [
      //   GetPage(
      //       name: '/home',
      //       page: () => const Homes(),
      //       binding: HomeControllerBinding()),
      // ],
      //Binding builder(if we don't want to use separat binding class)
      getPages: [
        GetPage(
          name: '/home',
          page: () => const Homes(),
          binding: BindingsBuilder(
            () => Get.lazyPut(
              () => HomeControllerBinding(),
            ),
          ),
        ),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Binding'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  'The value is ${Get.find<BindingController>().count}',
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.find<BindingController>().increments();
                },
                child: const Text('Increment'),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  // Get.to(const Homes());
                  //named route
                  // Get.toNamed('/home');
                  //for normal routes
                  Get.to(
                    const Homes(),
                    binding: HomeControllerBinding(),
                  );
                },
                child: const Text('Home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
Smart Management
- Getx provides smarthManagement that lets us configure how dependencies behave in the terms of memory management
-GetMaterialApp(
  SmartManagement:SmartManagement.full // or keepfactory or .onlybuilder)

  full mode(smartmanagement)
  -Everything gets disposed as soon as the route is removed from navigation stack,
  -unless declared permanent.

  Smart Management .keepFactory
  - Just like smart Management.full, it will remove it's dependecies when it's not being used anymore. However, it will keep their factory. which means it will recreate the dependency if you that instance again.

smartManagement .onlyBuilders
-with this option, only controllers started in init; or loaded into a binding with Get.lazyput() will be disposed
- if you use Get.put() or Get.putAsync() or any other approach,
-smartManagement will not have permission to exclude this dependency


 */