import 'package:flutter/material.dart';
import 'package:flutter_blueprint/controllers/authController.dart';
import 'package:get/get.dart';

class Home extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: FlatButton(
          child: Text("Sign Out"),
          onPressed: () {
            controller.logout();
          },
        ),
      ),
    );
  }
}
