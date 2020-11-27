import 'package:flutter/material.dart';
import 'Ipacking.dart';

abstract class Item{
  String name();
  Packing packing();
  double price();
}
