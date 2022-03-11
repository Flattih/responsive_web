import 'package:flutter/cupertino.dart';

class Coupons extends ChangeNotifier {
  int index = 0;

  List<String> coupons = ["Tümü", "Aktif", "Planlanan", "Pasif"];
  void setIndex(int inde) {
    index = inde;
    notifyListeners();
  }
}
