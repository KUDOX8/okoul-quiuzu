import 'package:flutter/material.dart';
import 'package:mealzaty_mobile_app/ui/pages/home_page/widgets/bottom_nav_bar.dart';
import 'package:mealzaty_mobile_app/ui/pages/home_page/widgets/diet_list.dart';
import 'package:mealzaty_mobile_app/ui/pages/home_page/widgets/plan_card.dart';
import 'package:mealzaty_mobile_app/utils/meals_generator.dart';

import '../../../core/models/meal_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

List<MealModel> mealList = const [
  MealModel(
      id: 'id',
      title: 'title',
      imageUrl: 'imageUrl',
      categories: [],
      isGlutenFree: true,
      isLactoseFree: true,
      isVegan: true,
      isVegetarian: true),
  MealModel(
      id: 'id',
      title: 'title',
      imageUrl: 'imageUrl',
      categories: [],
      isGlutenFree: true,
      isLactoseFree: true,
      isVegan: true,
      isVegetarian: true),
  MealModel(
      id: 'id',
      title: 'title',
      imageUrl: 'imageUrl',
      categories: [],
      isGlutenFree: true,
      isLactoseFree: true,
      isVegan: true,
      isVegetarian: true),
  MealModel(
      id: 'id',
      title: 'title',
      imageUrl: 'imageUrl',
      categories: [],
      isGlutenFree: true,
      isLactoseFree: true,
      isVegan: true,
      isVegetarian: true),
  MealModel(
      id: 'id',
      title: 'title',
      imageUrl: 'imageUrl',
      categories: [],
      isGlutenFree: true,
      isLactoseFree: true,
      isVegan: true,
      isVegetarian: true),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(
          backgroundColor: Colors.blue,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MealsGenerator(
                mealList: mealList,
              ),
            ],
          ),
          bottomNavigationBar: BottomNavBar(),
        ),
      ),
    );
  }
}
