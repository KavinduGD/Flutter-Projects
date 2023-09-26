import 'package:flutter/material.dart';
import 'package:food_app/cus_widgets/app_icon.dart';
import 'package:food_app/utils/dimensions.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImage,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/image/food1.png"))),
            ),
          ),
          Positioned(
              top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(iconData: Icons.arrow_back_ios),
                  AppIcon(
                    iconData: Icons.shopping_cart_checkout_outlined,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
