import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';

class ItemBottomWidget extends StatelessWidget {
  final String title;
  final Widget icon;
  final bool isSelected;
  final Color? colorSelected;
  final Color? colorUnselected;
  final VoidCallback? onTap;

  const ItemBottomWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.isSelected,
    this.colorSelected,
    this.colorUnselected,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkResponse(
        onTap: () {
          onTap?.call();
        },
        splashColor: Colors.blueGrey,
        radius: 30,
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              icon,
              Text(
                title,
                style: context.textTheme.caption?.copyWith(
                  color: isSelected
                      ? (colorSelected ?? Colors.blue)
                      : (colorUnselected ?? Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
