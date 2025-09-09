import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/core/app_colors.dart';
import 'package:flutter_application/core/text_styles.dart';

class NumberSelectorBox extends StatefulWidget {
  final String titulo;
  final int valor;
  final VoidCallback add;
  final VoidCallback remove;
  const NumberSelectorBox({
    super.key,
    required this.titulo,
    required this.valor,
    required this.add,
    required this.remove,
    });

  @override
  State<NumberSelectorBox> createState() => _NumberSelectorBoxState();
}

class _NumberSelectorBoxState extends State<NumberSelectorBox> {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsetsGeometry.only(left: 8, right: 8, top: 16, bottom: 16),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.backgroundComponent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("${widget.titulo}", style: TextStyles.bodyText),
                Text("${widget.valor}", style: TextStyles.numberTitle),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FloatingActionButton(
                        onPressed : widget.remove,
                        shape: CircleBorder(),
                        backgroundColor: AppColors.backgroundComponentSelected,
                        child: Icon(Icons.remove, color: Colors.white),
                      ),
                      FloatingActionButton(
                        onPressed: widget.add,
                        shape: CircleBorder(),
                        backgroundColor: AppColors.backgroundComponentSelected,
                        child: Icon(Icons.add, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
