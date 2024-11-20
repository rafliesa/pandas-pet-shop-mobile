import 'dart:convert';

List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
    String model;
    String pk;
    Fields fields;

    Product({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String photo;
    String name;
    int price;
    String description;
    String animalType;
    int stock;

    Fields({
        required this.user,
        required this.photo,
        required this.name,
        required this.price,
        required this.description,
        required this.animalType,
        required this.stock,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        photo: json["photo"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        animalType: json["animal_type"],
        stock: json["stock"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "photo": photo,
        "name": name,
        "price": price,
        "description": description,
        "animal_type": animalType,
        "stock": stock,
    };
}