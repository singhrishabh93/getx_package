import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_package/controllers/tap_controller.dart';
import 'package:getx_package/first_page.dart';
import 'package:getx_package/second_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller =
        Get.put(TapController()); // this is known as dependency injection
    // called the TapController using Getx, with the help of this we can access the properties i.e. x and increaseX()
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          GetBuilder<TapController>(
            // want to print the value we will call the increaseX() using getBuilder  and name the builder as tapController whose type will be of TapController type
            builder: (tapController) {
              return Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF89dad0)),
                child: Center(
                    child: Text(
                  tapController.x.toString(),
                  // we have to print the value x(it stored the value of _x), so we used tapController.x and it is of int type so we used .toString() method
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              );
            },
          ),
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
            onTap: () {
              Get.to(() =>
                  const FirstPage()); // used getx package for moving one page to another instead of using navigator.push
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
                "Go to First Page",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => SecondPage());
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
                "Go to Second Page",
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
