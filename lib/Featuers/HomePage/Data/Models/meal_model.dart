import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class MealsModel extends Equatable {
  String idMeal;
  String strMeal;
  String? strCategory;
  String? strArea;
  String? strInstructions;
  String? strMealThumb;
  String? strYoutube;

  MealsModel({
    required this.idMeal,
    required this.strMeal,
    this.strCategory,
    this.strArea,
    this.strInstructions,
    this.strMealThumb,
    this.strYoutube,
  });

  factory MealsModel.fromJson(Map<String, dynamic> json) {
    return MealsModel(
      idMeal: json['idMeal'],
      strMeal: json['strMeal'] ?? 'UnKnown',
      strCategory: json['strCategory'] ?? 'UnKnown',
      strArea: json['strArea'],
      strInstructions: json['strInstructions'],
      strMealThumb: json['strMealThumb'],
      strYoutube: json['strYoutube'],
    );
  }

  @override
  List<Object?> get props => [
        idMeal,
        strMeal,
        strCategory,
        strArea,
        strInstructions,
        strMealThumb,
        strYoutube,
      ];
}
