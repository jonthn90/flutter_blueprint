import 'package:flutter/material.dart';
import 'package:flutter_blueprint/controllers/authController.dart';
import 'package:flutter_blueprint/screens/signup.dart';
import 'package:get/get.dart';

class Login extends GetWidget<AuthController> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(hintText: "Email"),
                controller: emailController..text = "jon19@outlook.com",
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "Password"),
                controller: passwordController..text = "123456",
                obscureText: true,
              ),
              RaisedButton(
                child: Text("Log In"),
                onPressed: () {
                  controller.login(
                      emailController.text, passwordController.text);
                },
              ),
              FlatButton(
                child: Text("Sign Up"),
                onPressed: () {
                  Get.to(SignUp());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
