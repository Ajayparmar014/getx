import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx2/statemanagement/controller/api/commonmodule/appcolor.dart';
import 'package:getx2/statemanagement/controller/api/productmodule/views/product_list_view.dart';

void main() {
  runApp(const MyApi());
}

class MyApi extends StatefulWidget {
  const MyApi({Key? key}) : super(key: key);

  @override
  State<MyApi> createState() => _MyApiState();
}

class _MyApiState extends State<MyApi> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'AppString.fetchApiData',
      theme: ThemeData(
        primarySwatch: AppColor.pinkColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const ProductListView(),
    );
  }
}
