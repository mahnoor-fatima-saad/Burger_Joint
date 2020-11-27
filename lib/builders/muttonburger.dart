import 'package:designpatterns_burgerjoint/item_backend/Burger.dart';

class MuttonBurger extends Burger{
  @override
  double price(){
    return 70.5;
  }
  String name(){
    return 'Mutton Burger';
  }
}