import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_package/controllers/tap_controller.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.put(TapController());
    // called the TapController using Getx, with the help of this we can access the properties i.e. x and increaseX()
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          GestureDetector(
            onTap: () {
              controller.increaseX();
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
                "tap",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0)),
              child: Center(
                  child: Text(
                "tap",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0)),
              child: Center(
                  child: Text(
                "tap",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0)),
              child: Center(
                  child: Text(
                "tap",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
          ),
        ]),
      ),
    );
  }
}
