import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_project/features/checkout/presentation/components/card_info_component.dart';
import 'package:payment_project/features/checkout/presentation/components/thank_you_card_detail_component.dart';
import 'package:payment_project/features/checkout/presentation/components/total_component.dart';

import '../../../../core/utils/styles.dart';

class ThankYouCardComponent extends StatelessWidget {
  const ThankYouCardComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xFFEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child:  Padding(
        padding: EdgeInsets.only(top: 50 + 16, left: 22, right: 22),
        child: Column(
          children: [
            const Text(
              'Thank you!',
              textAlign: TextAlign.center,
              style: Styles.style25,
            ),
            const SizedBox(
              height: 10,
            ),
            const  Text('Your transaction was successful',
                textAlign: TextAlign.center, style: Styles.style20),
            const  SizedBox(
              height: 18,
            ),
            const ThankYouCardDetailsComponent(title: 'Date', value: '16/4/2024'),
            const  SizedBox(
              height: 10,
            ),
            const ThankYouCardDetailsComponent(title: 'Time', value: '10:15 AM'),
            const SizedBox(
              height: 10,
            ),
            const  ThankYouCardDetailsComponent(title: 'To', value: 'Sam Louis'),
            const  Divider(
              height: 24,
              thickness: 2,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 10,
            ),
            const TotalPriceComponent(title: 'Total', price: r'$50.97'),
           const SizedBox(
              height: 10,
            ),
           const CardInfoComponent(),
            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  FontAwesomeIcons.barcode,
                  size: 64,
                ),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 1.50, color: Color(0xFF34A853)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'PAID',
                      textAlign: TextAlign.center,
                      style: Styles.style24
                          .copyWith(color: const Color(0xff34A853)),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: ((MediaQuery.sizeOf(context).height * .2 + 20) / 2) - 29,
            ),

          ],
        ),
      ),
    );
  }
}
