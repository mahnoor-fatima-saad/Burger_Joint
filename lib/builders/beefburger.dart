import 'package:designpatterns_burgerjoint/item_backend/Burger.dart';

class BeefBurger extends Burger{
  @override
  double price(){
    return 60.5;
  }
  String name(){
    return 'Beef Burger';
  }
}