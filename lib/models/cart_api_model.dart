import 'dart:convert';

class CartApiModel {
    int id;
    int userId;
    DateTime date;
    List<ProductCartApi> products;
    int v;

    CartApiModel({
        required this.id,
        required this.userId,
        required this.date,
        required this.products,
        required this.v,
    });

    CartApiModel copyWith({
        int? id,
        int? userId,
        DateTime? date,
        List<ProductCartApi>? products,
        int? v,
    }) => 
        CartApiModel(
            id: id ?? this.id,
            userId: userId ?? this.userId,
            date: date ?? this.date,
            products: products ?? this.products,
            v: v ?? this.v,
        );

    factory CartApiModel.fromJson(str) => CartApiModel.fromMap(str);

    String toJson() => json.encode(toMap());

    static List<CartApiModel> fromJsonList(List<dynamic> jsonList) {
      return jsonList.map((json) => CartApiModel.fromJson(json)).toList();
    }

    factory CartApiModel.fromMap(json) => CartApiModel(
        id: json["id"],
        userId: json["userId"],
        date: DateTime.parse(json["date"]),
        products: List<ProductCartApi>.from(json["products"].map((x) => ProductCartApi.fromMap(x))),
        v: json["__v"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "userId": userId,
        "date": date.toIso8601String(),
        "products": List<dynamic>.from(products.map((x) => x.toMap())),
        "__v": v,
    };
}

class ProductCartApi {
    int productId;
    int quantity;

    ProductCartApi({
        required this.productId,
        required this.quantity,
    });

    ProductCartApi copyWith({
        int? productId,
        int? quantity,
    }) => 
        ProductCartApi(
            productId: productId ?? this.productId,
            quantity: quantity ?? this.quantity,
        );

    factory ProductCartApi.fromJson(String str) => ProductCartApi.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ProductCartApi.fromMap(Map<String, dynamic> json) => ProductCartApi(
        productId: json["productId"],
        quantity: json["quantity"],
    );

    Map<String, dynamic> toMap() => {
        "productId": productId,
        "quantity": quantity,
    };
}
