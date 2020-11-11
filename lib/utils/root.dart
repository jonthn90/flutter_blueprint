import 'package:flutter/material.dart';
import 'package:flutter_blueprint/controllers/authController.dart';
import 'package:flutter_blueprint/screens/home.dart';
import 'package:flutter_blueprint/screens/login.dart';
import 'package:get/get.dart';

class Root extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        debugPrint("UID - ${controller.user?.uid}");
        return (controller.user?.uid != null) ? Home() : Login();
      },
    );
  }
}
