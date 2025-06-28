import 'package:flutter/material.dart';
import 'package:mart_app_screen/widgets/Custom_header_products.dart';
import 'package:mart_app_screen/screens/appbar.dart';
import 'package:mart_app_screen/screens/bottom_bar.dart';
import 'package:mart_app_screen/widgets/catogary_grid.dart';
import 'package:mart_app_screen/utils/colors.dart';
import 'package:mart_app_screen/widgets/custom_product_card.dart';
import 'package:mart_app_screen/widgets/meal_plan_card.dart';
import 'package:mart_app_screen/data/product_data.dart';
import 'package:mart_app_screen/widgets/special_offer_card.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WhiteColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110.0),
        child: CustomAppbar(),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 18,
                  left: MediaQuery.of(context).size.width * 0.05,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SpecialOfferCard(),
                      SizedBox(width: 10),
                      SpecialOfferCard(),
                      SizedBox(width: 10),
                      SpecialOfferCard(),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CategoryGrid(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomHeaderProducts(Title: 'Fruits & Vegetables'),
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05,
                        top: MediaQuery.of(context).size.height * 0.011,
                        bottom: MediaQuery.of(context).size.height * 0.011,
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: fruitsAndVegesProducts.map((product) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: CustomProductCard(
                                title: product.title,
                                price: product.price,
                                imagePath: product.imagePath,
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    CustomHeaderProducts(Title: 'Bakery'),
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05,
                        top: MediaQuery.of(context).size.height * 0.011,
                        bottom: MediaQuery.of(context).size.height * 0.011,
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: bakeryProducts.map((product) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: CustomProductCard(
                                title: product.title,
                                price: product.price,
                                imagePath: product.imagePath,
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    CustomHeaderProducts(Title: 'Fastest near you'),
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05,
                        top: MediaQuery.of(context).size.height * 0.011,
                        bottom: MediaQuery.of(context).size.height * 0.011,
                      ),

                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            MealPlanCard(),
                            SizedBox(width: 10),
                            MealPlanCard(),
                            SizedBox(width: 10),
                            MealPlanCard(),
                          ],
                        ),
                      ),
                    ),
                    CustomHeaderProducts(Title: 'Meat & Seafood'),
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05,
                        top: MediaQuery.of(context).size.height * 0.011,
                        bottom: MediaQuery.of(context).size.height * 0.011,
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: seafoodProducts.map((product) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: CustomProductCard(
                                title: product.title,
                                price: product.price,
                                imagePath: product.imagePath,
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    CustomHeaderProducts(Title: 'Dairy, Eggs & Fridge'),
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05,
                        top: MediaQuery.of(context).size.height * 0.011,
                        bottom: MediaQuery.of(context).size.height * 0.011,
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: dairyProducts.map((product) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: CustomProductCard(
                                title: product.title,
                                price: product.price,
                                imagePath: product.imagePath,
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
