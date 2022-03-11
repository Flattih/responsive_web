import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../helpers/responsiveness.dart';

class FiltreBox extends StatelessWidget {
  const FiltreBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 6.h,
      width: Responsive.isDesktop(context) ? 16.5.w : 31.w,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Filtre",
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                color: Colors.grey,
                fontSize: !Responsive.isMobile(context) ? 8.sp : 14.sp),
          ),
          Icon(
            Icons.arrow_drop_down,
            size: !Responsive.isMobile(context) ? 10.sp : 17.sp,
          ),
        ],
      ),
    );
  }
}
