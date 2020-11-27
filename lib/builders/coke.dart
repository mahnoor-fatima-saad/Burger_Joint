import 'package:designpatterns_burgerjoint/item_backend/colddrink.dart';

class Coke extends ColdDrink{
  @override
  double price(){
    return 30.0;
  }
  String name(){
    return 'Coke';
  }
}