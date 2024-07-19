

import 'package:flutter_models_commons/flutter_models_commons.dart';

class DiscountedProduct extends ProductModel {
  final int discountPercentage;
  DiscountedProduct({
    int? id,
    required String title,
    required double price,
    required String description,
    required String category,
    required String image,
    required Rating rating,
    this.discountPercentage = 0,
  }) : super(
          id: id,
          title: title,
          price: price,
          description: description,
          category: category,
          image: image,
          rating: rating,
        );


  @override
  DiscountedProduct copyWith({
    int? id,
    String? title,
    double? price,
    String? description,
    String? category,
    String? image,
    Rating? rating,
    int? discountPercentage,
  }) =>
      DiscountedProduct(
        id: id ?? this.id,
        title: title ?? this.title,
        price: price ?? this.price,
        description: description ?? this.description,
        category: category ?? this.category,
        image: image ?? this.image,
        rating: rating ?? this.rating,
        discountPercentage: discountPercentage ?? this.discountPercentage,
      );

  factory DiscountedProduct.fromProductModel(ProductModel product, int discountPercentage) {
    return DiscountedProduct(
      id: product.id,
      title: product.title,
      price: product.price,
      description: product.description,
      category: product.category,
      image: product.image,
      rating: product.rating,
      discountPercentage: discountPercentage,
    );
  }
}