import 'package:flutter/material.dart';
import 'package:payment_project/features/checkout/presentation/components/app_bar_component.dart';
import 'package:payment_project/features/checkout/presentation/components/custom_button.dart';
import 'package:payment_project/features/checkout/presentation/views/thank_you_view.dart';

import '../components/custom_credit_card_component.dart';
import '../components/payment_methods_list_view.dart';

class PaymentDetailsView extends StatefulWidget {
  const PaymentDetailsView({Key? key}) : super(key: key);

  @override
  State<PaymentDetailsView> createState() => _PaymentDetailsViewState();
}

class _PaymentDetailsViewState extends State<PaymentDetailsView> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarComponent(
            title: 'Payment Details',
            onTap: () {
              Navigator.pop(context);
            }),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(child: PaymentMethodsListView()),
              SliverToBoxAdapter(
                  child: CustomCreditCard(
                    formKey: formKey,
                    autoValidateMode: autoValidateMode,
                  )),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: CustomButton(
                      title: 'Payment',
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                        } else {
                          autoValidateMode = AutovalidateMode.always;
                          Navigator.push(context, MaterialPageRoute(builder: (
                              context) => const ThankYouView(),));
                          setState(() {});
                        }
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
