import 'package:flutter/material.dart';

// Screen to display the products of a specific category
class CategoriesScreen extends StatelessWidget {
  final String category;

  const CategoriesScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    // Dummy list of products with details
    List<Map<String, String>> products = [
      {
        'name': 'Product 1',
        'price': '\$100',
        'stock': 'In Stock',
        'description': 'Description 1'
      },
      {
        'name': 'Product 2',
        'price': '\$150',
        'stock': 'In Stock',
        'description': 'Description 2'
      },
      {
        'name': 'Product 3',
        'price': '\$200',
        'stock': 'Out of Stock',
        'description': 'Description 3'
      },
      {
        'name': 'Product 4',
        'price': '\$250',
        'stock': 'In Stock',
        'description': 'Description 4'
      },
      {
        'name': 'Product 5',
        'price': '\$300',
        'stock': 'In Stock',
        'description': 'Description 5'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(category), // Title of the app bar
        centerTitle: true, // Center the title
      ),
      // GridView to display products
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0), // Padding for the grid
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: 10.0, // Spacing between columns
          mainAxisSpacing: 10.0, // Spacing between rows
          childAspectRatio: 1.0, // Aspect ratio of each tile (width / height)
        ),
        itemCount: products.length, // Number of items in the grid
        itemBuilder: (BuildContext context, int index) {
          // GestureDetector to handle taps on the product tiles
          return GestureDetector(
            onTap: () {
              // Add the product to the cart
              _addToCart(context, products[index]);
            },
            child: Card(
              elevation: 3.0, // Elevation of the card
              child: Padding(
                padding: const EdgeInsets.all(8.0), // Padding around the text
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center the content
                  children: [
                    Text(
                      products[index]['name']!, // Display product name
                      style: const TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      products[index]['price']!, // Display product price
                      style: const TextStyle(fontSize: 16.0),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      products[index]['stock']!, // Display product stock status
                      style:
                          const TextStyle(fontSize: 14.0, color: Colors.grey),
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

  // Function to add the product to the cart
  void _addToCart(BuildContext context, Map<String, String> product) {
    // Implement logic to add the product to the cart
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Item Added to Cart'), // Alert dialog title
          content: Text(
              '${product['name']} has been added to your cart.'), // Alert dialog content
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('OK'), // OK button
            ),
          ],
        );
      },
    );
  }
}
