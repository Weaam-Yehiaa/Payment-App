import 'package:flutter/material.dart';
import 'package:payment_project/features/checkout/presentation/components/check_component.dart';
import 'package:payment_project/features/checkout/presentation/components/dash_line_component.dart';
import 'package:payment_project/features/checkout/presentation/components/semi_circle_component.dart';
import 'package:payment_project/features/checkout/presentation/components/thank_you_card_component.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const ThankYouCardComponent(),
          Positioned(
            left: 20 + 16,
            right: 20 + 16,
            bottom: MediaQuery.sizeOf(context).height / 4 + 20,
            child: const DashLineComponent(),
          ),
          const SemiCircleComponent(
            left: true,
          ),
          const SemiCircleComponent(
            right: true,
          ),
          const Positioned(
              top: -50, left: 0, right: 0, child: CheckComponent()),
        ],
      ),
    );
  }
}
