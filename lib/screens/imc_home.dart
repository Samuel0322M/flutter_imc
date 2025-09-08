import 'package:flutter/material.dart';
import 'package:flutter_application/components/gender_selector.dart';
import 'package:flutter_application/components/height_select.dart';


//vamos a tener una clase que se extiende del stateful widget
class ImcHomeScreen extends StatefulWidget {
  // crea un constructor
  const ImcHomeScreen({super.key});
  //y siempre tiene un create state que llama a la clase
  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

class _ImcHomeScreenState extends State<ImcHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderSelector(),
        SizedBox(height: 8),
        HeightSelector(),
      ],
    );
  }
}