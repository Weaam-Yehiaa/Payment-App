import 'package:flutter/material.dart';

class SemiCircleComponent extends StatelessWidget {
  const SemiCircleComponent({Key? key,  this.left=false, this.right=false}) : super(key: key);
  final bool left,right;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.sizeOf(context).height / 4,
      left: left?-20:null,
      right: right?-20:null,
      child: const CircleAvatar(
        backgroundColor: Colors.white,
      ),
    );
  }
}
