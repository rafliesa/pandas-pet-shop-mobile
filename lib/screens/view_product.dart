
import 'package:flutter/material.dart';
import 'package:pandas_pet_shop_mobile/models/product.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.fields.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Text(
              "Nama: ${product.fields.name}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text("Jenis Hewan: ${product.fields.animalType}"),
            const SizedBox(height: 8),
            Text("Harga: Rp ${product.fields.price}"),
            const SizedBox(height: 8),
            Text("Stok: ${product.fields.stock}"),
            const SizedBox(height: 8),
            Text("Deskripsi: ${product.fields.description}"),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
