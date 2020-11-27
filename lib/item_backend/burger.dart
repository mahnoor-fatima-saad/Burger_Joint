import 'package:designpatterns_burgerjoint/interfaces/Iitem.dart';
import 'package:designpatterns_burgerjoint/interfaces/Ipacking.dart';
import 'package:designpatterns_burgerjoint/packing_backend/wrapper.dart';


abstract class Burger implements Item{
  @override
  Packing packing(){
    return new Wrapper();
  }
  @override
  double price();
}