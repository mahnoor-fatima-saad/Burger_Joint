import 'package:designpatterns_burgerjoint/interfaces/Iitem.dart';

class Meal{
  List<Item> items = List<Item>();

  void addItem(Item item){
    items.add(item);
  }
  double getCost(){
    double cost = 0.0;

    for (Item i in items){
      cost += i.price();
    }
    return cost;
  }
  void showItems(){
    for(Item i in items){
      print("Item: " + i.name());
      print(", Packing: " + i.packing().pack());
      print(", Price: " + i.price().toString());
    }
  }
  String getMeal(){
    return items[0].name().toString();
  }

  String getDrink(){
    return items[1].name().toString();
  }

}