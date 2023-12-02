import 'package:flutter/material.dart';

class CheckComponent extends StatelessWidget {
  const CheckComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundColor: Color(0xFFD9D9D9),
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Colors.green,
        child: Icon(
          Icons.check,
          size: 40,
          color: Colors.white,
        ),
      ),
    );
  }
}
