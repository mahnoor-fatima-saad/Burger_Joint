import 'package:designpatterns_burgerjoint/interfaces/Iitem.dart';
import 'package:designpatterns_burgerjoint/interfaces/Ipacking.dart';
import 'package:designpatterns_burgerjoint/packing_backend/bottle.dart';



abstract class ColdDrink implements Item{
  @override
  Packing packing(){
    return new Bottle();
  }
  @override
  double price();
}