import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyCheckBox extends StatelessWidget {
  const MyCheckBox({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3.h,
      width: 3.h,
      decoration: BoxDecoration(
        border: Border.all(),
        color: isActive ? Colors.black : Colors.white,
      ),
    );
  }
}
