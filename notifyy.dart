import 'package:flutter/cupertino.dart';
import 'Numbers1.dart';

class Notifyy extends ChangeNotifier {
  int _totalPrice = 0;
  final Set<int> _selectedIndices = {};
  int add=0;
  int get totalPrice => _totalPrice;
  List<int> numbers = [0, 1, 2, 3];

  void togglePrice(int index) {
    if (_selectedIndices.contains(index)) {
      // Remove price if already added
      if (index.isEven) {
        _totalPrice -= 100;
      } else {
        _totalPrice -= 50;
      }
      _selectedIndices.remove(index);
    } else {
      // Add price if not already added
      if (index.isEven) {
        _totalPrice += 100;
      } else {
        _totalPrice += 50;
      }
      _selectedIndices.add(index);
    }
    notifyListeners();
  }

  bool isSelected(int index) {
    return _selectedIndices.contains(index);
  }
  void add_num(){
    int last=numbers.last;
    numbers.add(last+1);
    notifyListeners();
  }

}

