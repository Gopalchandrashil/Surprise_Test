import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:surprise_test/screen/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // initialBinding: StateBindings(),
      title: 'Surprise App',
      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              textStyle: const TextStyle(
                fontSize: 25,
                letterSpacing: 2,
                fontWeight: FontWeight.w700,
              ),
              padding: const EdgeInsets.symmetric(vertical: 4),
            ),
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(0, 0, 0, 0),
            elevation: 0,
          )),
      home: const LoginPage(),
    );
  }
}