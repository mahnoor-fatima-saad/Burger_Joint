import 'package:designpatterns_burgerjoint/item_backend/Burger.dart';

class ChickenBurger extends Burger{
  @override
  double price(){
    return 50.5;
  }
  String name(){
    return 'Chicken Burger';
  }
}