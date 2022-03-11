import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../helpers/responsiveness.dart';

class CountAndTransactionRow extends StatelessWidget {
  const CountAndTransactionRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          width: Responsive.isDesktop(context) ? 8.w : 15.w,
          height: 4.h,
          decoration: BoxDecoration(border: Border.all()),
          child: Text(
            "1 Seçili",
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: !Responsive.isMobile(context) ? 4.sp : 9.sp),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: Responsive.isDesktop(context) ? 8.w : 15.w,
          height: 4.h,
          decoration: BoxDecoration(border: Border.all()),
          child: Padding(
            padding: EdgeInsets.only(left: 1.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "İşlemler",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: !Responsive.isMobile(context) ? 4.sp : 9.sp),
                ),
                Icon(
                  Icons.arrow_drop_down_sharp,
                  size: 6.sp,
                )
              ],
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
