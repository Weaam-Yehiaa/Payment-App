import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class ThankYouCardDetailsComponent extends StatelessWidget {
  const ThankYouCardDetailsComponent(
      {Key? key, required this.title, required this.value})
      : super(key: key);
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, textAlign: TextAlign.center, style: Styles.style18),
        const Spacer(),
        Text(
          value,
          style: Styles.style18,
        )
      ],
    );
  }
}
