import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.bgColor,
    required this.text,
    required this.onTap,
  });

  final Color bgColor;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: bgColor,
          fixedSize: const Size(335, 70),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          textStyle: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          )),
      onPressed: onTap,
      child: Text(text),
    );
  }
}
