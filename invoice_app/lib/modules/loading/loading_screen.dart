import 'package:flutter/material.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';
import 'package:invoice_app/core/theme/app_assets.dart';
import 'package:invoice_app/core/theme/app_colors.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              10.verticalSpace,
              Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppAssets.logo,
                      scale: 4,
                    ),
                    const Text('Invoice Simple',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Montserrat'))
                  ],
                ),
                20.verticalSpace,
                const Text(
                    'Create Proffesional invoices in seconds. Get started with a free trial.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat')),
              ]),
              const Text(
                  'By continuing, you are agreeing to Invoice’s                            Terms of Use & Privacy Policy',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 11,
                      color: AppColors.greyText,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat'))
            ],
          ),
        ));
  }
}
