import 'package:flutter/material.dart';
import 'package:food_app/cus_widgets/big_text.dart';
import 'package:food_app/cus_widgets/small_text.dart';
import 'package:food_app/home/food_page_body.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/utils/dimensions.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 244, 244, 244),
      body: Column(
        children: [
          Container(
            child: Container(
              margin:
                  EdgeInsets.only(top: Dimensions.height15 * 3.5, bottom: 15),
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: "Sri Lanka",
                        color: AppColors.mainColor,
                      ),
                      const Row(
                        children: [
                          SmallText(
                            text: "Gampaha",
                            color: Colors.black54,
                          ),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.mainColor,
                      ),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          FoodPageBody(),
        ],
      ),
    );
  }
}
