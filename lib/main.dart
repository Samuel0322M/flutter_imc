import 'package:flutter/material.dart';
//import 'package:flutter_application/components/buttons.dart';
import 'package:flutter_application/core/app_colors.dart';
import 'package:flutter_application/screens/imc_home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.background,
          foregroundColor: AppColors.primary,
          title: Text("IMC Calculator"),
        ),
        backgroundColor: AppColors.background,
        body: Column(children: [ImcHomeScreen(), 
        ]),
      ),
    );
  }
}
