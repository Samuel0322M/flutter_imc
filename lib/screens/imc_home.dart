import 'package:flutter/material.dart';
import 'package:flutter_application/components/gender_selector.dart';
import 'package:flutter_application/components/height_select.dart';
import 'package:flutter_application/components/number_selector.dart';

//vamos a tener una clase que se extiende del stateful widget
class ImcHomeScreen extends StatefulWidget {
  // crea un constructor
  const ImcHomeScreen({super.key});
  //y siempre tiene un create state que llama a la clase
  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

class _ImcHomeScreenState extends State<ImcHomeScreen> {
  String tituloPeso = "Peso";
  int valorPeso = 90;
  String tituloedad = "Edad";
  int valorEdad = 30;
  double height = 160;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderSelector(),
        HeightSelector(
          selectedHeight : height,
          height:(newHeight) {
            setState(() {
              height = newHeight;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4, right: 4),
          child: Row(
            children: [
              NumberSelectorBox(
                titulo: tituloPeso,
                valor: valorPeso,
                add: () {
                  setState(() {
                    valorPeso = valorPeso + 1;
                  });
                },
                remove: () {
                  setState(() {
                    valorPeso = valorPeso - 1;
                  });
                },
              ),
              NumberSelectorBox(
                titulo: tituloedad,
                valor: valorEdad,
                add: () {
                  setState(() {
                    valorEdad = valorEdad + 1;
                  });
                },
                remove: () {
                  setState(() {
                    valorEdad = valorEdad - 1;
                  });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
