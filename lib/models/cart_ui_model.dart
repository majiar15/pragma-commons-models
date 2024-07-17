class CartUIModel {
    List<ProductCartUIModel> products;

    CartUIModel({
        required this.products,
    });
}

class ProductCartUIModel {
  int productId;
  String title;
  double price;
  String image;
  int quantity;

  ProductCartUIModel({
    required this.productId,
    required this.title,
    required this.price,
    required this.image,
    this.quantity = 1,
  });
}
