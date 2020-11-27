import 'package:designpatterns_burgerjoint/builderPattern.dart';
import 'package:designpatterns_burgerjoint/constants.dart';
import 'package:designpatterns_burgerjoint/dialog.dart';
import 'package:flutter/material.dart';

import 'meal.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void mealChecker(int num) {
    if (num == 1) {
      isPressed1 = true;
      isPressed2 = false;
      isPressed3 = false;
      isPressed4 = false;
    }
    else if (num == 2) {
      isPressed1 = false;
      isPressed2 = true;
      isPressed3 = false;
      isPressed4 = false;
    }
    else if (num == 3) {
      isPressed1 = false;
      isPressed2 = false;
      isPressed3 = true;
      isPressed4 = false;
    }
    else if (num == 4) {
      isPressed1 = false;
      isPressed2 = false;
      isPressed3 = false;
      isPressed4 = true;
    }
    else{
      isPressed1 = false;
      isPressed2 = false;
      isPressed3 = false;
      isPressed4 = false;
    }
  }
  void DrinkChecker(int num){
    if(num == 1){
      isDrinkPressed1 = true;
      isDrinkPressed2 = false;
    }
    else if(num == 2){
      isDrinkPressed1 = false;
      isDrinkPressed2 = true;
    }
    else{
      isDrinkPressed1 = false;
      isDrinkPressed2 = false;
    }
  }

  int chosenBurger = 0;
  int chosenDrink = 0;
  bool isPressed1 = false;
  bool isPressed2 = false;
  bool isPressed3 = false;
  bool isPressed4 = false;
  bool isDrinkPressed1 = false;
  bool isDrinkPressed2 = false;
  Dialog popup = new Dialog();
  BuilderPattern builder = new BuilderPattern();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.9],
            colors: [
              Color(0xffCD7672),
              Color(0xffEEB462),
            ],
          ),
        ),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons8-hamburger-64.png',
                      color: Color(0xfff5f1e9),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Burger Joint',
                      style: kTitleTextStyle,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.53,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 1.5
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top:20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Step 01",
                                        style: kStepTitleStyle,
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  "Select Your Burger Meal",
                                  style: kStepDetailStyle,
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ButtonTheme(
                                      height: 70,
                                      minWidth: 200,
                                      child: RaisedButton(
                                        onPressed: (){
                                          chosenBurger = 1;
                                          setState(() {
                                            mealChecker(chosenBurger);
                                          });
                                        },
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          side: BorderSide(color: Color(0xfff5f1e9))
                                        ),
                                        color: isPressed1? Color(0xffEEB462):Color(0xffCD7672),
                                        elevation: 5,
                                        child: Text(
                                          "Chicken",
                                          style: kStepDetailStyle,
                                        ),
                                      ),
                                    ),
                                    ButtonTheme(
                                      height: 70,
                                      minWidth: 200,
                                      child: RaisedButton(
                                        onPressed: (){
                                          chosenBurger = 2;
                                          setState(() {
                                            mealChecker(chosenBurger);
                                          });
                                        },
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            side: BorderSide(color: Color(0xfff5f1e9))
                                        ),
                                        color: isPressed2? Color(0xffEEB462):Color(0xffCD7672),
                                        elevation: 5,
                                        child: Text(
                                          "Beef",
                                          style: kStepDetailStyle,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ButtonTheme(
                                      height: 70,
                                      minWidth: 200,
                                      child: RaisedButton(
                                        onPressed: (){
                                          chosenBurger = 3;
                                          setState(() {
                                            mealChecker(chosenBurger);
                                          });
                                        },
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            side: BorderSide(color: Color(0xfff5f1e9))
                                        ),
                                        color: isPressed3? Color(0xffEEB462):Color(0xffCD7672),
                                        elevation: 5,
                                        child: Text(
                                          "Vegetarian",
                                          style: kStepDetailStyle,
                                        ),
                                      ),
                                    ),
                                    ButtonTheme(
                                      height: 70,
                                      minWidth: 200,
                                      child: RaisedButton(
                                        onPressed: (){
                                          chosenBurger = 4;
                                          setState(() {
                                            mealChecker(chosenBurger);
                                          });
                                        },
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            side: BorderSide(color: Color(0xfff5f1e9))
                                        ),
                                        color: isPressed4? Color(0xffEEB462):Color(0xffCD7672),
                                        elevation: 5,
                                        child: Text(
                                          "Mutton",
                                          style: kStepDetailStyle,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white,
                                  width: 1.5
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top:20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Step 02",
                                        style: kStepTitleStyle,
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  "Select Your Drink",
                                  style: kStepDetailStyle,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ButtonTheme(
                                      height: 70,
                                      minWidth: 200,
                                      child: RaisedButton(
                                        onPressed: (){
                                          chosenDrink = 1;
                                          setState(() {
                                            DrinkChecker(chosenDrink);
                                          });
                                        },
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            side: BorderSide(color: Color(0xfff5f1e9))
                                        ),
                                        color: isDrinkPressed1? Color(0xffEEB462):Color(0xffCD7672),
                                        elevation: 5,
                                        child: Text(
                                          "Coke",
                                          style: kStepDetailStyle,
                                        ),
                                      ),
                                    ),
                                    ButtonTheme(
                                      height: 70,
                                      minWidth: 200,
                                      child: RaisedButton(
                                        onPressed: (){
                                          chosenDrink = 2;
                                          setState(() {
                                            DrinkChecker(chosenDrink);
                                          });
                                        },
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            side: BorderSide(color: Color(0xfff5f1e9))
                                        ),
                                        color: isDrinkPressed2? Color(0xffEEB462):Color(0xffCD7672),
                                        elevation: 5,
                                        child: Text(
                                          "Pepsi",
                                          style: kStepDetailStyle,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),

                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white,
                                  width: 1.5
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top:10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Step 03",
                                        style: kStepTitleStyle,
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  "Finalize Your Order",
                                  style: kStepDetailStyle,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ButtonTheme(
                                      height: 40,
                                      minWidth: 200,
                                      child: RaisedButton(
                                        onPressed: (){
                                          Meal meal = builder.chooser(chosenBurger, chosenDrink);
                                          openPopup(context, meal);
                                          setState(() {
                                            chosenDrink = 0;
                                            chosenBurger = 0;
                                            mealChecker(chosenBurger);
                                            DrinkChecker(chosenDrink);
                                          });
                                        },
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            side: BorderSide(color: Color(0xfff5f1e9))
                                        ),
                                        color: Color(0xffCD7672),
                                        highlightColor: Color(0xffEEB462),
                                        elevation: 5,
                                        child: Text(
                                          "Proceed",
                                          style: kStepDetailStyle,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),

                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
