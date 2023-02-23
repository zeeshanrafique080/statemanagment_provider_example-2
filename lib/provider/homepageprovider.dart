import 'package:flutter/cupertino.dart';

class contactModel with ChangeNotifier {
  bool? isEligibel;
  String eligibalMessage = "";
  void checkEligibality(int age) {
    if (age >= 18) {
      isEligibel = true;
      eligibalMessage = "you are now eligibal ";
      notifyListeners();
    } else {
      isEligibel = false;
      eligibalMessage = "you are not eligibal";
      notifyListeners();
    }
  }
}
