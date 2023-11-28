import 'package:flutter/material.dart';
import 'package:payment_project/core/utils/styles.dart';

class TotalPriceComponent extends StatelessWidget {
  const TotalPriceComponent({Key? key, required this.title, required this.price}) : super(key: key);
  final String title,price;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: Styles.styleBold18,
        ),
        const Spacer(),
        Text(
          price,
          textAlign: TextAlign.center,
          style: Styles.styleBold18,
        ),
      ],
    );
  }
}
