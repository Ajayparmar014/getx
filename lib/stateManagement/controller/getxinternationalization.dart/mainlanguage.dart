import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx2/statemanagement/controller/getxinternationalization.dart/languagecontroller.dart';
import 'package:getx2/statemanagement/controller/getxinternationalization.dart/languagemessage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  LanguageController languageController = Get.put(LanguageController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //languageMessage class ko call karenge  because of it we can translate, because we define inside it our translation.
      translations: LanguageMessage(),
      //local language define karnege/ default locale/ to get device locale Get.deviceLocale
      locale: const Locale('en', 'US'),
      //fallback locale if wrong locale found
      fallbackLocale: const Locale('en', 'US'),
      title: 'Internationalization',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Internationalization'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'hello'.tr,
                style: const TextStyle(fontSize: 25, color: Colors.pink),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  languageController.changeLanguage('en', 'Us');
                },
                child: const Text('English'),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  languageController.changeLanguage('hi', 'IN');
                },
                child: const Text('Hindi'),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  languageController.changeLanguage('fr', 'FR');
                },
                child: const Text('French'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
