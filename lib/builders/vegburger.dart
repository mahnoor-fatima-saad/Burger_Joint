import 'package:designpatterns_burgerjoint/item_backend/Burger.dart';

class VegBurger extends Burger{
  @override
  double price(){
    return 25.0;
  }
  String name(){
    return 'Veg Burger';
  }
}