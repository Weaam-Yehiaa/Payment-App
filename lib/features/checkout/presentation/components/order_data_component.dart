import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class OrderDataComponent extends StatelessWidget {
  const OrderDataComponent({Key? key, required this.title, required this.price})
      : super(key: key);
  final String title, price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: Styles.style18,
        ),
        const Spacer(),
        Text(
          price,
          textAlign: TextAlign.center,
          style: Styles.style18,
        ),
      ],
    );
  }
}