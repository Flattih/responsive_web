import 'package:flutter/material.dart';

class CouponSituation extends StatelessWidget {
  const CouponSituation({
    Key? key,
    required this.text,
    required this.press,
    required this.isActive,
  }) : super(key: key);
  final String text;
  final VoidCallback press;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap: press,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Text(
          text,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
                color: isActive ? Colors.deepPurpleAccent : Colors.transparent,
                width: 4),
          ),
        ),
      ),
    );
  }
}
