import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/number_selector_box.dart';

class NumberSelector extends StatefulWidget {
  const NumberSelector({super.key});

  @override
  State<NumberSelector> createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  String tituloPeso = "Peso";
  int valorPeso = 90;
  String tituloedad = "Edad";
  int valorEdad = 30;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, right: 4),
      child: Row( children: [
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
      ]
      ),
    );
  }
}