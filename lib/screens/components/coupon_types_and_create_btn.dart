import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../helpers/responsiveness.dart';

class CouponTypesAndCreateBtn extends StatelessWidget {
  const CouponTypesAndCreateBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            "İndirim Kuponları",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey, width: 1),
            ),
          ),
        ),
        SizedBox(
          width: 3.w,
        ),
        const Text(
          "Otomatik İndirim Kuponları",
        ),
        const Spacer(),
        if (!Responsive.isMobile(context))
          SizedBox(
            height: 30,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Kupon Oluştur",
              ),
            ),
          ),
      ],
    );
  }
}
