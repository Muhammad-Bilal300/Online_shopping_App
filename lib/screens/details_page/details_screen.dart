import 'package:flutter/material.dart';
import 'package:online_shopping_app/models/products.dart';

class DetailsScreen extends StatefulWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.product.color,
      body: Container(
        height: 200,
        width: 200,
        child: Image.asset(widget.product.image),
      ),
    );
  }
}
