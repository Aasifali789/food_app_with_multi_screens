import 'package:flutter/material.dart';
import 'package:food_app_w8_multi_screens/configuration/food.dart';
import 'package:food_app_w8_multi_screens/view/food_detail_page/widgets/detail_widget.dart';
import 'package:food_app_w8_multi_screens/view/home_page/components/size_config.dart';

import '../cart_page/widgets/food_list_widget/food_image.dart';

class FoodDetailView extends StatefulWidget {
  Food food;
  FoodDetailView({required this.food});

  @override
  _FoodDetailViewState createState() => _FoodDetailViewState();
}

class _FoodDetailViewState extends State<FoodDetailView> {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // FoodImage(food: widget.food, ),
            DetailWidget(food: widget.food,),
          ],
        ),
      ),
    );
  }
}