import 'package:flutter/material.dart';
import 'package:payment_project/features/checkout/presentation/components/payment_method_item.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({Key? key}) : super(key: key);

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> paymentMethodItems = const [
    'assets/images/visa.svg',
    'assets/images/payPal.svg',
    'assets/images/pay.svg',
  ];

  int activeIndex=0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        itemCount: paymentMethodItems.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: (){
                setState(() {
                  activeIndex=index;
                });
              },
              child: PaymentMethodItem(
                image: paymentMethodItems[index],
                isActive: index==activeIndex,

              ),
            ),
          );
        },
      ),
    );
  }
}
