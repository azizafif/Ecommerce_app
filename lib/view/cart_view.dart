import 'package:ecommerce_app/constance.dart';
import 'package:ecommerce_app/core/view_model/cart_view_model.dart';
import 'package:ecommerce_app/view/widgets/custom_buttom.dart';
import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GetBuilder<CartViewModel>(
                init: CartViewModel(),
                builder: (controller) {
                  return Container(
                    child: ListView.separated(
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(height: 10);
                      },
                      itemBuilder: (context, index) {
                        return Container(
                          height: 140,
                          child: Row(
                            children: [
                              Container(
                                width: 140,
                                child: Image.network(
                                  controller.cartProductModel[index].image,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                        text: controller
                                            .cartProductModel[index].name),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    CustomText(
                                      text:
                                          '\$ ${controller.cartProductModel[index].price.toString()}',
                                      color: primaryColor,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      color: Colors.grey.shade200,
                                      width: 140,
                                      height: 40,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.add,
                                            color: Colors.black,
                                          ),
                                          SizedBox(
                                            width: 20.0,
                                          ),
                                          CustomText(
                                            fontSize: 20.0,
                                            color: Colors.black,
                                            alignment: Alignment.center,
                                            text: '1',
                                          ),
                                          SizedBox(
                                            width: 20.0,
                                          ),
                                          Container(
                                            padding:
                                                EdgeInsets.only(bottom: 15),
                                            child: Icon(
                                              Icons.minimize,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      itemCount: controller.cartProductModel.length,
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    CustomText(
                        text: 'Total', fontSize: 22.0, color: Colors.grey),
                    SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: '\$ 2000',
                      color: primaryColor,
                      fontSize: 18,
                    ),
                  ],
                ),
                CustomButton(
                  onPress: () {},
                  text: 'CHECKOUT',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
