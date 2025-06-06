import 'package:flutter/material.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';
import 'package:invoice_app/ui/app_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            10.verticalSpace,
            Column(
              children: [
                const Text('Welcome to the world of lightning-fast invocing',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat')),
                10.verticalSpace,
                RichText(
                  text: const TextSpan(
                      children: [
                        TextSpan(text: 'Create up to '),
                        TextSpan(
                            text: '2 free invoices ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'and '),
                        TextSpan(
                            text: 'send 1 ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'as part of yur free trial.'),
                      ],
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Montserrat')),
                ),
              ],
            ),
            10.verticalSpace,
            AppButton(
              text: 'Create New Invoice',
              onPressed: () {},
              isMainOrange: true,
            )
          ],
        ),
      ),
    );
  }
}
