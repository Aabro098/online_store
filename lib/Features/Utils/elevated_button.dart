
import 'package:flutter/material.dart';

import 'package:online_store/Style/text_style.dart';

class AppElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color color;
  const AppElevatedButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)
        ),
        minimumSize: const Size(double.infinity, 30),
        backgroundColor: color,
        foregroundColor: Colors.white,
      ), 
      child: Text(text , style: AppTextStyle.elevatedButtonText ,),
    );
  }
}
