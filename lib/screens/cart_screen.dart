import 'package:flutter/material.dart';

// Dummy CartScreen class to represent the shopping cart
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'), // Title of the app bar
        centerTitle: true, // Center the title
      ),
      body: const Center(
        child: Text(
            'Shopping Cart Screen'), // Text content of the shopping cart screen
      ),
    );
  }
}
