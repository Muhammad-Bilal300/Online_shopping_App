import 'package:flutter/material.dart';
import 'package:online_shopping_app/models/products.dart';
import 'package:online_shopping_app/screens/details_page/components/body.dart';

import '../../constants.dart';

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
      appBar: buildAppBar(),
      body: Body(product: widget.product),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: widget.product.color,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: kTextColor,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.search,
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.shopping_basket,
            color: kTextColor,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
