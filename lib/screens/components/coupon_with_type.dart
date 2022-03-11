import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../helpers/responsiveness.dart';

class CouponWithType extends StatelessWidget {
  final String usageType, buttonText;
  const CouponWithType({
    Key? key,
    required this.usageType,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 6.7.w),
      child: Row(
        children: [
          Text(
            usageType,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontSize: !Responsive.isMobile(context) ? 4.sp : 10.sp),
          ),
          SizedBox(
            width: 1.w,
          ),
          Container(
            width: 1.h,
            height: 1.h,
            color: Colors.black,
          ),
          const Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(onPrimary: Colors.grey),
            onPressed: () {},
            child: Text(
              buttonText,
            ),
          ),
        ],
      ),
    );
  }
}
