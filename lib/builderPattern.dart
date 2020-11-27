import 'package:designpatterns_burgerjoint/meal.dart';
import 'package:designpatterns_burgerjoint/mealbuilder.dart';

class BuilderPattern{
  MealBuilder mealBuilder = new MealBuilder();
   Meal chooser(int burger, int drink){
     if(burger ==1){
       Meal chickenMeal = mealBuilder.prepareChickenMeal(drink);
       print("Chicken Meal    Total Cost: "+chickenMeal.getCost().toString());
       return chickenMeal;
     }
     else if(burger ==2){
       Meal beefMeal = mealBuilder.prepareBeefMeal(drink);
       print("Beef Meal    Total Cost: "+beefMeal.getCost().toString());
       return beefMeal;
     }
     else if(burger ==3){
       Meal VegMeal = mealBuilder.prepareVegMeal(drink);
       print("Veg Meal    Total Cost: "+VegMeal.getCost().toString());
       return VegMeal;
     }
     else if(burger ==4){
       Meal muttonMeal = mealBuilder.prepareMuttonMeal(drink);
       print("Mutton Meal    Total Cost: "+muttonMeal.getCost().toString());
       return muttonMeal;
     }
   }
}