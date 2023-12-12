import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_package/controllers/list_controller.dart';
import 'package:getx_package/controllers/tap_controller.dart';
import 'package:getx_package/my_home_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    ListController listController = Get.put(ListController());
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(20),
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF89dad0)),
                    child: Center(
                        child: Text(
                      "Y value " +
                          controller.y.value
                              .toString(), //Get.find<TapController>().x.toString() can be used but we have to comment out the TapController in the top.
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF89dad0)),
                    child: Center(
                        child: Text(
                      "Total Value " +
                          Get.find<TapController>()
                              .z
                              .toString(), //Get.find<TapController>().x.toString() can be used but we have to comment out the TapController in the top.
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => MyHomePage());
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF89dad0)),
                child: Center(
                    child: Text(
                  "X value " +
                      controller.x
                          .toString(), //Get.find<TapController>().x.toString() can be used but we have to comment out the TapController in the top.
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                //Get.to(() => MyHomePage());
                Get.find<TapController>().increaseY();
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF89dad0)),
                child: Center(
                    child: Text(
                  "Increase Y", //Get.find<TapController>().x.toString() can be used but we have to comment out the TapController in the top.
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                //Get.to(() => MyHomePage());
                Get.find<TapController>().totalXY();
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF89dad0)),
                child: Center(
                    child: Text(
                  "Total X+Y", //Get.find<TapController>().x.toString() can be used but we have to comment out the TapController in the top.
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                //Get.to(() => MyHomePage());
                Get.find<ListController>()
                    .setValues(Get.find<TapController>().z);
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF89dad0)),
                child: Center(
                    child: Text(
                  "Save Total", //Get.find<TapController>().x.toString() can be used but we have to comment out the TapController in the top.
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
