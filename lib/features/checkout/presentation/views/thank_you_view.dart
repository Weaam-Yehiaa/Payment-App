import 'package:flutter/material.dart';
import 'package:payment_project/features/checkout/presentation/components/app_bar_component.dart';
import 'package:payment_project/features/checkout/presentation/components/thank_you_view_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarComponent(
          title: '',
          onTap: () {
            Navigator.pop(context);
          }),
      body: Transform.translate(
          //b7rk 3la 7sb m7wr (x,y)
          offset: const Offset(0, -16),
          child: const ThankYouViewBody()),
    );
  }
}
