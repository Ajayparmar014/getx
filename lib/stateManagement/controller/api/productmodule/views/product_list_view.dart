import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx2/statemanagement/controller/api/commonmodule/appcolor.dart';
import 'package:getx2/statemanagement/controller/api/commonmodule/appstring.dart';
import 'package:getx2/statemanagement/controller/api/productmodule/controller/product_controller.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({Key? key}) : super(key: key);

  @override
  State<ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  final ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppString.productList,
        ),
      ),
      body: Obx(() {
        if (productController.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
              itemCount: productController.productList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4)),
                          width: 150,
                          height: 100,
                          margin: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            //painting bindind error check later
                            //solution may be flutter run -d chrome --web -renderer html
                            child: Image.network(
                              "${productController.productList[index].imageLink} ''",
                              scale: 1.0,
                              width: 150,
                              height: 100,
                              fit: BoxFit.cover,
                              color: AppColor.pinkColor,
                              colorBlendMode: BlendMode.color,
                            ),
                          ),
                        ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                productController.productList[index].name ??
                                    "xvx",
                                style: const TextStyle(fontSize: 18),
                              ),
                              Text(
                                productController.productList[index].brand ??
                                    "hello",
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                productController.productList[index].category ??
                                    "1321",
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      color: AppColor.grey200,
                      height: 2,
                    )
                  ],
                );
              });
        }
      }),
    );
  }
}
