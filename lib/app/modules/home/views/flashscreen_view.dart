import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class FlashScreenView extends GetView<HomeController> {
  const FlashScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset('assets/shojib.JPG'),
      ),
    );
  }
}
