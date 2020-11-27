import 'package:designpatterns_burgerjoint/interfaces/Ipacking.dart';

class Wrapper implements Packing{
  String pack(){
    return "Wrapper";
  }
}