import 'package:flutter/material.dart';

import 'package:payment_project/features/checkout/presentation/components/custom_button.dart';

import '../components/app_bar_component.dart';
import '../components/order_data_component.dart';
import '../components/pament_method_bottom_sheet.dart';
import '../components/total_component.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarComponent(
        title: 'My Cart',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Expanded(child: Image.asset('assets/images/cart.png')),
            const SizedBox(
              height: 10,
            ),
            const OrderDataComponent(
              title: 'Order Subtotal',
              price: '580',
            ),
            const SizedBox(
              height: 5,
            ),
            const OrderDataComponent(
              title: 'Discount',
              price: r'$0',
            ),
            const SizedBox(
              height: 5,
            ),
            const OrderDataComponent(
              title: 'Shipping',
              price: '50',
            ),
            const Divider(
              height: 24,
              thickness: 2,
            ),
            const TotalPriceComponent(title: 'Total', price: '9356'),
            const SizedBox(
              height: 15,
            ),
            CustomButton(
              title: 'Complete Payment',
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const PaymentDetailsView()),
                // );

                showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    builder: (context) {
                      return   PaymentMethodsBottomSheet();
                      //   BlocProvider(
                      //   create: (context) => PaymentCubit(CheckoutRepoImpl()),
                      //   child: const
                      //   PaymentMethodsBottomSheet(),
                      // );
                    });
              },
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
