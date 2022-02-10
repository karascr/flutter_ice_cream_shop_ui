import 'package:flutter/material.dart';

class IceCream {
  final int id;
  final int amountGrams;
  final String title;
  final String description;
  final String imgPath;
  final Color color;
  final double rate;
  final double price;

  IceCream(
      {required this.id,
      required this.amountGrams,
      required this.title,
      required this.description,
      required this.imgPath,
      required this.color,
      required this.rate,
      required this.price});
}
