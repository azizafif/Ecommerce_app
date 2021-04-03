import 'package:ecommerce_app/helper/extenstion.dart';
import 'package:flutter/cupertino.dart';

class CartProductModel {
  String name, image, price;
  int quantity;

  CartProductModel({this.name, this.image, this.quantity, this.price});

  CartProductModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }

    name = map['name'];
    image = map['image'];

    quantity = map['quantity'];

    price = map['price'];
  }

  toJson() {
    return {
      'name': name,
      'image': image,
      'quantity': quantity,
      'price': price,
    };
  }
}
