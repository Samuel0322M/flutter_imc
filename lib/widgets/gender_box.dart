import 'package:flutter/material.dart';
import 'package:flutter_application/core/app_colors.dart';
import 'package:flutter_application/core/text_styles.dart';

class GenderBox extends StatelessWidget {
  final String imagePath;
  final String texto;
  final bool isSelected;
  final VoidCallback? onTap;

  const GenderBox({
    super.key,
    required this.imagePath,
    required this.texto,
    required this.isSelected,
    required this.onTap,
  });

    @override
    Widget build(BuildContext context) {
      return Expanded(
        child: GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.only(left: 8, top: 16, bottom: 16, right: 8),
            child: Container(
              decoration: BoxDecoration(
                color: isSelected
                    ? AppColors.backgroundComponentSelected
                    : AppColors.backgroundComponent,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: EdgeInsetsGeometry.all(12),
                child: Column(
                  children: [
                    Image.asset(imagePath, height: 100),
                    SizedBox(height: 12),
                    Text(texto, style: TextStyles.bodyText),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }
  }

