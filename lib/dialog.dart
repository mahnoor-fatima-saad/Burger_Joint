import 'package:designpatterns_burgerjoint/constants.dart';
import 'package:designpatterns_burgerjoint/meal.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

openPopup(context, Meal meal) {
  Alert(
      context: context,
      title: "Order Receipt",
      content: Column(
        children: <Widget>[
          Text(
            "Meal: " + meal.getMeal(),
            style: kReceiptDetailStyle,
          ),
          Text(
            "Drink: " + meal.getDrink(),
            style: kReceiptDetailStyle,
          ),
          Text(
            "Price: "+meal.getCost().toString(),
            style: kReceiptDetailStyle,
          ),
        ],
      ),
      buttons: [
        DialogButton(
          onPressed: () => Navigator.pop(context),
          color: Color(0xffCD7672),
          child: Text(
            "Confirm",
            style: kStepDetailStyle,
          ),
        )
      ]).show();
}