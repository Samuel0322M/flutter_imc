import 'package:flutter/material.dart';
import 'package:flutter_application/core/app_colors.dart';
import 'package:flutter_application/core/text_styles.dart';

class HeightSelector extends StatefulWidget {
  final ValueChanged height;
  final double selectedHeight;
  const HeightSelector({super.key, required this.height, required this.selectedHeight});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.backgroundComponent,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Text("ALTURA", style: TextStyles.bodyText),
                  SizedBox(height: 8),
                  Text("${widget.selectedHeight.toStringAsFixed(0)} cm", style: TextStyles.titleText),
                  Slider(
                    value: widget.selectedHeight,
                    onChanged: widget.height,
                    min: 120,
                    max: 260,
                    divisions: 140,
                    activeColor: AppColors.primary,
                  ),
                ],
              ),
            ),
          ),
        );
  }
}
