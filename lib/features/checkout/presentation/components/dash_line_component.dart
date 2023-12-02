import 'package:flutter/material.dart';

class DashLineComponent extends StatelessWidget {
  const DashLineComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(
            30,
                (index) => Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: Container(
                  color: const Color(0xFF888888),
                  height: 2,
                ),
              ),
            )));
  }
}
