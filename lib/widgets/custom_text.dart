import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  const CustomText({super.key, required this.text,  this.size,  this.color,  this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize:size ?? 16, 
        fontWeight: weight ?? FontWeight.normal,
        color: color ?? Colors.black,
        ),
    );
  }
}
