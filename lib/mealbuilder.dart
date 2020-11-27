import 'package:designpatterns_burgerjoint/builders/beefburger.dart';
import 'package:designpatterns_burgerjoint/builders/chickenburger.dart';
import 'package:designpatterns_burgerjoint/builders/coke.dart';
import 'package:designpatterns_burgerjoint/builders/muttonburger.dart';
import 'package:designpatterns_burgerjoint/builders/vegburger.dart';
import 'package:designpatterns_burgerjoint/meal.dart';

import 'builders/pepsi.dart';

class MealBuilder{
  Meal prepareVegMeal(int drink){
    Meal meal = new Meal();
    meal.addItem(new VegBurger());
    if(drink == 1){
      meal.addItem(new Coke());
    }
    else if(drink ==2){
      meal.addItem(new Pepsi());
    }
    return meal;
  }

  Meal prepareChickenMeal(int drink){
    Meal meal = new Meal();
    meal.addItem(new ChickenBurger());
    if(drink == 1){
      meal.addItem(new Coke());
    }
    else if(drink ==2){
      meal.addItem(new Pepsi());
    }
    return meal;
  }

  Meal prepareMuttonMeal(int drink){
    Meal meal = new Meal();
    meal.addItem(new MuttonBurger());
    if(drink == 1){
      meal.addItem(new Coke());
    }
    else if(drink ==2){
      meal.addItem(new Pepsi());
    }
    return meal;
  }

  Meal prepareBeefMeal(int drink){
    Meal meal = new Meal();
    meal.addItem(new BeefBurger());
    if(drink == 1){
      meal.addItem(new Coke());
    }
    else if(drink ==2){
      meal.addItem(new Pepsi());
    }
    return meal;
  }
}