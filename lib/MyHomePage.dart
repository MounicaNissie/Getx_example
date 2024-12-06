//Dependency injuction -> create an instance for GetX controller class
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_explained/controller/tap_controller.dart';
import 'package:getx_explained/first_class.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.put(TapController());
    return Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: SizedBox(
                //width: double.maxFinite,
                //height: double.maxFinite,
                child: Column(
                  //bring the element to the center
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GetBuilder<TapController>(builder: (_){
                      return Container(
                        margin: const EdgeInsets.all(20),
                        //width: double.maxFinite,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFF89dad0)
                        ),
                        child: Center(
                            child: Text(
                              controller.x.toString(),
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            )
                        ),
                      );
                    },),
                    // 1
                   GestureDetector(
                     onTap: (){
                       controller.increaseX();

                     },
                     child: Container(
                       margin: const EdgeInsets.all(20),
                       //width: double.maxFinite,
                       height: 100,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color: const Color(0xFF89dad0)
                       ),
                       child: const Center(
                           child: Text(
                               "Tap",
                             style: TextStyle(
                               fontSize: 20,
                               color: Colors.white,
                             ),
                           )
                       ),
                     ),
                   ),
                      //2
                    GestureDetector(
                      onTap: (){
                        Get.to(()=>FirstClass());

                      },
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        //width: double.maxFinite,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF89dad0)
                        ),
                        child: const Center(
                            child: Text(
                              "Go to first page",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            )
                        ),
                      ),
                    ),
                    //3
                    GestureDetector(
                      onTap: (){

                      },
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        //width: double.maxFinite,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFF89dad0)
                        ),
                        child: const Center(
                            child: Text(
                              "Tap",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            )
                        ),
                      ),
                    ),
                    //4
                    GestureDetector(
                      onTap: (){

                      },
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        //width: double.maxFinite,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFF89dad0)
                        ),
                        child: const Center(
                            child: Text(
                              "Tap",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
    );
  }
}
