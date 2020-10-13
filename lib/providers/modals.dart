import 'package:flutter/cupertino.dart';

class Modals with ChangeNotifier {
  bool isModalShown = false;

  void toggleModal() {
    isModalShown = !isModalShown;
    notifyListeners();
  }
}
