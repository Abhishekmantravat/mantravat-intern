import 'package:flutter/material.dart';
import 'package:taskmanagement/screen/signupbuttonwidget.dart';
import 'package:taskmanagement/screen/signupform_widget.dart';
import 'package:get/get.dart';
import "package:taskmanagement/screen/taskscreen.dart";

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              const SignUpFormWidget(),
              SignUpButtonWidget(
                onTap: () {
                  Get.to(TaskScreen());
                },
                title: "Already have an Account",
                subtitle: "SignIn",
              )
            ],
          ),
        ),
      ),
    );
  }
}