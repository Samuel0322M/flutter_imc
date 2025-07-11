import 'package:flutter/material.dart';
import 'package:flutter_application/core/app_colors.dart';
import 'package:flutter_application/core/text_styles.dart';

class ButtonsDart extends StatelessWidget {
  const ButtonsDart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 54),
        child : Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  print("redireccionar");
                }, style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.backgroundComponent,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 22),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  )
                ),
                child: Text("Prospectos", style: TextStyles.bodytext),
              ),
            ],
          ),
        ),
        ),
          Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  print("redireccionar");
                }, style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.backgroundComponent,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 22),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  )
                ),
                child: Text("Recibo De Caja", style: TextStyles.bodytext),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
