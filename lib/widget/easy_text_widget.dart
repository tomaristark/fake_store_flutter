
import 'package:fake_store/constant/dimen.dart';
import 'package:flutter/material.dart';

class EasyText extends StatelessWidget {
  const EasyText({
    super.key,
    required this.text,
    this.fontSize=kFS14x,
    this.fontWeight=FontWeight.w400,
    this.maxLine,
    });

    final String text ;
    final  double ? fontSize;
    final FontWeight ? fontWeight;
    final int ? maxLine;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}