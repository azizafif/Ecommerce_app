import 'package:ecommerce_app/helper/extenstion.dart';
import 'package:flutter/cupertino.dart';

class ProductModel {
  String name, image, description, size, price;
  Color color;

  ProductModel(
      {this.name,
      this.image,
      this.description,
      this.color,
      this.size,
      this.price});

  ProductModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }

    name = map['name'];
    image = map['image'];
    description = map['description'];
    color = HexColor.fromHex(map['color']);
    size = map['size'];
    price = map['price'];
  }

  toJson() {
    return {
      'name': name,
      'image': image,
      'description': description,
      'color': color,
      'size': size,
      'price': price,
    };
  }
}
