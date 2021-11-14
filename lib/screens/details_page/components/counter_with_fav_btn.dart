import 'package:flutter/material.dart';

import 'cart_counter.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CartCounter(),
        Container(
          padding: EdgeInsets.all(6),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
          child: Center(child: Icon(Icons.health_and_safety)),
        )
      ],
    );
  }
}
