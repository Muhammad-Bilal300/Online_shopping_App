import 'package:flutter/material.dart';
import 'package:online_shopping_app/models/products.dart';
import 'package:online_shopping_app/screens/details_page/details_screen.dart';

import '../../../constants.dart';

class ItemCard extends StatefulWidget {
  final Product product;

  const ItemCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              // For demo we use fixed height and width
              // height: 170,
              // width: 150,
              decoration: BoxDecoration(
                color: widget.product.color,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16)),
              ),
              child: Image.asset(
                widget.product.image,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 7, vertical: kDefaultPaddin / 6),
            child: Text(
              products[0].title,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Text(
              "\$${widget.product.price}",
              style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
