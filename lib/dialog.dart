import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dialog',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dailog'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                    title: 'Dialog Box',
                    titleStyle: const TextStyle(fontSize: 20),
                    middleText: 'This is my message',
                    middleTextStyle: const TextStyle(fontSize: 16),
                    backgroundColor: Colors.indigo,
                    radius: 10,
                    //content data override to middletext
                    content: Row(
                      children: const [
                        // CircularProgressIndicator(),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Text('content data'),
                        ),
                      ],
                    ),
                    // textCancel: 'Cancel',
                    // cancelTextColor: Colors.lightBlue,
                    // onCancel: () {},
                    // textConfirm: 'Confirm',
                    // confirmTextColor: Colors.white,
                    // onConfirm: () {},
                    // buttonColor: Colors.black,
                    //override the default cancel and confirm
                    // cancel: const Text(
                    //   'cancel',
                    //   style: TextStyle(color: Colors.white),
                    // ),
                    // confirm: const Text(
                    //   'Confirm',
                    //   style: TextStyle(color: Colors.white),
                    // ),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text(
                          'Cancel btn',
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Confirm btn',
                        ),
                      ),
                    ],
                    // when we clicked out the box then box not turnout
                    //bydefault barrier is true
                    barrierDismissible: false,
                  );
                },
                child: const Text('Dialog'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
