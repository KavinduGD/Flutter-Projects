import 'package:flutter/material.dart';
import 'package:food_app/cus_widgets/app_icon.dart';
import 'package:food_app/cus_widgets/big_text.dart';
import 'package:food_app/cus_widgets/details_column.dart';
import 'package:food_app/cus_widgets/expandable_text.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/utils/dimensions.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background Image
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
          //icons
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
            ),
          ),
          //Intriductions
          Positioned(
            left: 0,
            right: 0,
            top: Dimensions.popularFoodImage - 20,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.width20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    Dimensions.radius20,
                  ),
                  topRight: Radius.circular(
                    Dimensions.radius20,
                  ),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const DetailsColumn(
                    text: "Chinese Side",
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  BigText(
                    text: "Introduce",
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  const Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableText(
                        text:
                            "The 'Foundations of Cybersecurity' course is essential for my goals. It's all about keeping things safe on the internet, which is super important these days. This course will teach me the basics of how to do that. Once I finish it, I'll be ready for a job in cybersecurity. I'll be able to protect computers and information from bad people who want to do harm. This course is like my first step into a cool career where I can make a big difference. But, I can't do it alone because I'm a student without any money to spare. That's why I'm asking for financial aid. With your help, I can take this course and start working toward my dream of being a cybersecurity expert. Your support means the world to me,are. That's why I'm asking for financial aid. With your help, I can take this course and start working toward my dream of being a cybersecurity expert. Your support means the world to me, and it will set me on the right path for a successful future in this important fieldare. That's why I'm asking for financial aid. With your help, I can take this course and start working toward my dream of being a cybersecurity expert. Your support means the world to me, and it will set me on the right path for a successful future in this important field and it will set me on the right path for a successful future in this important fielorking toward my dream of being a cybersecurity expert. Your support means the world to me, and it will set me on the right path for a successful future in this important fieldare. That's why I'm asking for financial aid. With your help, I can take this course and start working toward my dream of being a cybersecurity expert. Your support means the world to me, and it will set me on the right path for a successful future in this important field and it will set me on the right path for a successful future in this important fielorking toward my dream of being a cybersecurity expert. Your support means the world to me, and it will set me on the right path for a successful future in this important fieldare. That's why I'm asking for financial aid. With your help, I can take this course and start working toward my dream of being a cybersecurity expert. Your support means the world to me, and it will set me on the right path for a successful future in this important field and it will set me on the right path for a successful future in this important field",
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomBarHeight,
        padding: EdgeInsets.only(
          top: Dimensions.height30,
          bottom: Dimensions.height30,
          left: Dimensions.height20,
          right: Dimensions.height20,
        ),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              Dimensions.radius20 * 2,
            ),
            topRight: Radius.circular(
              Dimensions.radius20 * 2,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              padding: EdgeInsets.only(
                top: Dimensions.height10,
                bottom: Dimensions.height10,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  BigText(
                    text: '0',
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height10,
                bottom: Dimensions.height10,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  Dimensions.radius20,
                ),
                color: AppColors.mainColor,
              ),
              child: BigText(
                text: '\$10  | Add to Cart',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
