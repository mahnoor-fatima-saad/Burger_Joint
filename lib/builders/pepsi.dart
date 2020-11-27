import 'package:designpatterns_burgerjoint/item_backend/colddrink.dart';

class Pepsi extends ColdDrink{
  @override
  double price(){
    return 35.0;
  }
  String name(){
    return 'Pepsi';
  }
}