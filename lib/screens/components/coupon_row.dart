import 'package:flutter/material.dart';
import 'package:responsive_web_design/screens/components/my_checkbox.dart';
import 'package:responsive_web_design/screens/coupon_screen.dart';
import 'package:sizer/sizer.dart';

import '../../helpers/responsiveness.dart';

class CouponRow extends StatelessWidget {
  final bool isActive;
  final String code, disscountText, usageRate, usageDate;
  const CouponRow({
    Key? key,
    this.isActive = false,
    required this.code,
    required this.usageRate,
    required this.usageDate,
    required this.disscountText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyCheckBox(isActive: isActive),
        SizedBox(
          width: !Responsive.isMobile(context) ? 3.w : 1.w,
        ),
        Text(
          code,
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(fontSize: !Responsive.isMobile(context) ? 4.sp : 8.sp),
        ),
        SizedBox(
          width: !Responsive.isMobile(context) ? 2.w : 0.1.w,
        ),
        SizedBox(
          width: 2.w,
          child: Divider(
            thickness: 0.5.sp,
            color: Colors.grey,
          ),
        ),
        SizedBox(
          width: !Responsive.isMobile(context) ? 1.w : 0.1.w,
        ),
        Text(
          disscountText,
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(fontSize: Responsive.isMobile(context) ? 7.sp : null),
        ),
        const Spacer(),
        Text(
          usageRate,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
              color: Colors.grey,
              fontSize: !Responsive.isMobile(context) ? 4.sp : 8.sp,
              fontWeight: FontWeight.w500),
        ),
        const Spacer(),
        Text(
          usageDate,
          style: Theme.of(context).textTheme.headline4!.copyWith(
              color: Colors.grey,
              fontSize: !Responsive.isMobile(context) ? 4.sp : 7.sp),
        )
      ],
    );
  }
}
