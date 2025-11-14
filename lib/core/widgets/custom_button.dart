import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final child = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (icon != null) Icon(icon),
        if (icon != null) const SizedBox(width: 6),
        Text(text),
      ],
    );

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
      width: double.infinity,
      child: OutlinedButton(onPressed: onPressed, child: child),
    );
  }
}
