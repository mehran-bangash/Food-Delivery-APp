import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/Admin/admin_food.dart';
import 'package:food_delivery_app/Admin/admin_home.dart';
import 'package:food_delivery_app/Admin/admin_login.dart';
import 'package:food_delivery_app/Authentication/login.dart';
import 'package:food_delivery_app/Authentication/signup.dart';
import 'package:food_delivery_app/Pages/onboard.dart';
import 'package:food_delivery_app/Pages/wallet.dart';
import 'Authentication/forgotPassword.dart';
import 'Pages/app_constant.dart';
import 'Pages/bottomNav.dart';
import 'Pages/home.dart';
import 'firebase_options.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      home: AdminLogin(),
    );
  }
}
