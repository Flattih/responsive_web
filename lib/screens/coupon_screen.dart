import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_web_design/models/coupons.dart';
import 'package:responsive_web_design/screens/components/count_and_transaction_row.dart';
import 'package:responsive_web_design/screens/components/coupon_with_nock_row.dart';
import 'package:sizer/sizer.dart';
import '../helpers/responsiveness.dart';

import 'components/coupon_row.dart';
import 'components/coupon_situation.dart';
import 'components/coupon_types_and_create_btn.dart';
import 'components/coupon_with_type.dart';
import 'components/filtre_box.dart';
import 'components/my_checkbox.dart';

class CouponScreen extends StatelessWidget {
  const CouponScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: !Responsive.isMobile(context) ? 12.h : 6.h,
          titleSpacing: 10,
          title: Text(
            "Kampanyalar",
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(fontSize: 15.sp, fontWeight: FontWeight.bold),
          ),
          bottom: PreferredSize(
              child: Divider(
                color: const Color(0xFFACACAC),
                indent: 10,
                thickness: 1.sp,
              ),
              preferredSize:
                  Size.fromHeight(!Responsive.isMobile(context) ? 8.h : 1.h)),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: 5.h,
              horizontal: !Responsive.isMobile(context) ? 2.5.w : 1.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CouponTypesAndCreateBtn(),
                if (Responsive.isMobile(context))
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Kupon Oluştur",
                      ),
                    ),
                  ),
                SizedBox(
                  height: 8.h,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(2.w),
                  decoration: BoxDecoration(border: Border.all()),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CouponWithNockRow(),
                        SizedBox(
                          height: 2.h,
                        ),
                        Divider(
                          thickness: 0.4.h,
                          indent: 1.5.w,
                          endIndent: 1.5.w,
                        ),
                        SizedBox(height: 2.h),
                        Padding(
                          padding: EdgeInsets.only(top: 0.1.h, left: 2.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const FiltreBox(),
                              Align(
                                alignment: Alignment.topRight,
                                child: Icon(
                                  Icons.align_horizontal_left,
                                  size: 10.sp,
                                ),
                              ),
                              const CountAndTransactionRow(),
                              SizedBox(
                                height: 3.h,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const CouponRow(
                                      isActive: true,
                                      code: "53AXKRFG",
                                      disscountText: "Tüm ürünlerde %5 İndirim",
                                      usageDate: "12.21.21-31.12.21",
                                      usageRate: "1/1 Kullanıldı"),
                                  const CouponWithType(
                                      usageType: "Tek Kullanımlık",
                                      buttonText: "Aktif"),
                                  Divider(
                                    thickness: !Responsive.isMobile(context)
                                        ? 0.6.sp
                                        : 2.sp,
                                    height: 0.8.h,
                                  ),
                                  const CouponRow(
                                      isActive: false,
                                      code: "53AXKZDA",
                                      disscountText:
                                          "ABC Koleksiyonunda %5 İndirim",
                                      usageDate: "12.21.21-31.12.21",
                                      usageRate: "5/15 kullanıldı"),
                                  const CouponWithType(
                                      usageType: "Vip Müşterilerde",
                                      buttonText: "Pasif"),
                                  const MyCheckBox(),
                                  SizedBox(
                                    height: 2.5.h,
                                  ),
                                  const MyCheckBox(),
                                  SizedBox(
                                    height: 2.5.h,
                                  ),
                                  const MyCheckBox(),
                                  SizedBox(
                                    height: 2.5.h,
                                  ),
                                  const MyCheckBox(),
                                  SizedBox(
                                    height: 2.5.h,
                                  ),
                                  const MyCheckBox(),
                                  SizedBox(
                                    height: 2.5.h,
                                  ),
                                  const MyCheckBox(),
                                  SizedBox(
                                    height: 2.5.h,
                                  ),
                                  const MyCheckBox(),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
