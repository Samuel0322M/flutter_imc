import 'package:flutter/material.dart';
import 'package:flutter_application/core/app_colors.dart';
import 'package:flutter_application/core/text_styles.dart';

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
        Container(
          width: 180,
          height: 180,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: selectedGender == "Hombre"
              ? AppColors.backgroundComponent 
              :  AppColors.backgroundComponentSelected,
            borderRadius: BorderRadius.circular(16),
            
          ),
          child: Padding(
            padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Image.network(
                "https://raw.githubusercontent.com/ArisGuimera/Flutter-Expert/refs/heads/master/imc_calculator/assets/images/male.png",
                height: 100,
              ),
              //Image.asset("assets/images/male.png", height: 100),
              SizedBox(height: 8),
              Text("Hombre", style: TextStyles.bodytext),
            ],
          ),
          ),
        ),
        //mujer
        Container(
          width: 180,
          height: 180,
          
          decoration: BoxDecoration(
            color: selectedGender == "Mujer"
              ? AppColors.backgroundComponent 
              :  AppColors.backgroundComponentSelected,
            borderRadius: BorderRadius.circular(16),
          ),
          child : Padding(
            padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Image.network(
                "https://raw.githubusercontent.com/ArisGuimera/Flutter-Expert/refs/heads/master/imc_calculator/assets/images/female.png",
                height: 100,
              ),
              //Image.asset("assets/images/female.png", height: 100),
              SizedBox(height: 8),
              Text("Mujer", style: TextStyles.bodytext),
            ],
          ),
          ),
        ),
      ],
    );
  }
}
