import 'package:flutter/material.dart';
import './models/product.dart';
import './widgets/product_detail_page.dart';

class ProductNavigationPage extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Pixel 1',
      description: 'Pixel is the most feature phone ever',
      price: 800,
      backgroundColor: Colors.blue,
      rating: 4,
    ),
    Product(
      name: 'Laptop',
      description: 'Laptop is the most productive tool',
      price: 2000,
      backgroundColor: Colors.green,
      rating: 5,
    ),
    Product(
      name: 'tablet',
      description: 'tablet is the most useful device ever for meetings',
      price: 30.0,
      backgroundColor: Colors.red,
      rating: 3,
    ),
    Product(
      name: 'pen drive',
      description: 'iphone is the stylist phone ever',
      price: 30.0,
      backgroundColor: const Color.fromARGB(255, 36, 182, 7),
      rating: 3,
    ),
      Product(
      name: 'hard drive',
      description: 'hard drive is the stylist phone ever',
      price: 30.0,
      backgroundColor: const Color.fromARGB(255, 36, 182, 7),
      rating: 3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Navigation'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailPage(product: product),
                  ),
                );
              },
              child: Container(
                height: 150,
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 150,
                      color: product.backgroundColor,
                      child: Center(
                        child: Text(
                          product.name,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(product.name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            SizedBox(height: 8),
                            Text(product.description),
                            SizedBox(height: 8),
                            Text('\$${product.price.toStringAsFixed(2)}'),
                            SizedBox(height: 8),
                            Row(
                              children: List.generate(5, (starIndex) {
                                return Icon(
                                  starIndex < product.rating ? Icons.star : Icons.star_border,
                                  color: Colors.orange,
                                );
                              }),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}