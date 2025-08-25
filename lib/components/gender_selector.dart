import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/gender_box.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //hombre
        GenderBox(
          imagePath: "assets/images/male.png",
          texto: "Hombre",
          isSelected: selectedGender == "H",
          onTap: () {
            setState(() {
              selectedGender = "H";
            });
          }),
        //mujer
        GenderBox(
          imagePath: "assets/images/female.png",
          texto: "Mujer",
          isSelected: selectedGender == "M",
          onTap: () {
            setState(() {
              selectedGender = "M";
            });
          }),
      ],
    );
  }
}
