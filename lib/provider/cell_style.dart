import 'package:flutter/material.dart';

class CellStyle with ChangeNotifier {
  Color _color = Colors.red;

  get cellColor {
    return _color;
  }

  set cellColor(Color color) {
    this._color = color;
    notifyListeners();
  }
}
