import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
class TapController extends GetxController{
  int x = 0;
  void increaseX(){
    x++;
    update();
  }
}

