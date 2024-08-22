import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinder_application/authenticationScreen/login_screen.dart';
import 'package:tinder_application/Controller/authentication_controller.dart';

void main() {
  // Initialize the AuthenticationController

  WidgetsFlutterBinding.ensureInitialized();
  Get.put(AuthenticationController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'tinder',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
