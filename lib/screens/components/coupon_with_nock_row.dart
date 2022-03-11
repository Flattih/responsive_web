import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/coupons.dart';
import 'coupon_situation.dart';

class CouponWithNockRow extends StatelessWidget {
  const CouponWithNockRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(
        context.read<Coupons>().coupons.length,
        (index) => CouponSituation(
            text: context.read<Coupons>().coupons[index],
            press: () => context.read<Coupons>().setIndex(index),
            isActive: index == context.watch<Coupons>().index),
      ),
    );
  }
}
