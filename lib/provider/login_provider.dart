import 'basemodel.dart';

class LoginViewModel extends BaseModel {
  int _count = 1;

  int get count => _count;

  void incrementCount() {
    _count++;
    notifyListeners();
  }

  void decrementCount() {
    _count--;
    notifyListeners();
  }
}
