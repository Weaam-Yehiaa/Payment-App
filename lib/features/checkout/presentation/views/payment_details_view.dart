import 'package:flutter/material.dart';
import 'package:payment_project/features/checkout/presentation/components/app_bar_component.dart';
import 'package:payment_project/features/checkout/presentation/components/container_for_payment_card.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarComponent('Payment Details'),
      body:const Column(
        children: [
           ContainerForPaymentCard(isActive: false,),
        ],
      ) ,
    );
  }
}
