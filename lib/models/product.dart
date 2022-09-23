// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Product {
  final String image, title, description, price;
  final int stock, id;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.stock,
    required this.description,
    required this.price,
  });
}

List<Product> product = [
  Product(
    id: 1,
    title: "Pizza 1",
    price: "30k",
    description: isidesc,
    stock: 300,
    image: "assets/images/pizza1.png",
  ),
  Product(
    id: 2,
    title: "Pizza 2",
    price: "40k",
    description: isidesc,
    stock: 300,
    image: "assets/images/pizza2.png",
  ),
  Product(
    id: 3,
    title: "Pizza 3",
    price: "10k",
    description: isidesc,
    stock: 300,
    image: "assets/images/pizza3.png",
  ),
  Product(
    id: 4,
    title: "Pizza 4",
    price: "50k",
    description: isidesc,
    stock: 300,
    image: "assets/images/pizza4.png",
  ),
  Product(
    id: 5,
    title: "Pizza 5",
    price: "15k",
    description: isidesc,
    stock: 300,
    image: "assets/images/pizza5.png",
  ),
  Product(
    id: 6,
    title: "Pizza 6",
    price: "10k",
    description: isidesc,
    stock: 300,
    image: "assets/images/pizza6.png",
  ),
];

String isidesc =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare rhoncus nunc, et pretium nunc. Sollicitudin arcu lectus risus et, ornare mi. Phasellus sed velit elementum id commodo semper. Bibendum id felis id aliquam interdum.";
