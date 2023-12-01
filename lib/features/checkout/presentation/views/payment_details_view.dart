import 'package:flutter/material.dart';
import 'package:payment_project/features/checkout/presentation/components/app_bar_component.dart';
import 'package:payment_project/features/checkout/presentation/components/custom_button.dart';

import '../components/custom_credit_card_component.dart';
import '../components/payment_methods_list_view.dart';

class PaymentDetailsView extends StatelessWidget {
  PaymentDetailsView({Key? key}) : super(key: key);
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarComponent(
            title: 'Payment Details',
            onTap: () {
              Navigator.pop(context);
            }),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: PaymentMethodsListView()),
              SliverToBoxAdapter(child: CustomCreditCard()),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: CustomButton(),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
