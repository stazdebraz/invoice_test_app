import 'package:flutter/material.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';
import 'package:invoice_app/core/theme/app_assets.dart';
import 'package:invoice_app/ui/app_button.dart';

class SendInvoiceBottomBar extends StatelessWidget {
  const SendInvoiceBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(5))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset(
                      AppAssets.share,
                      scale: 4,
                    ),
                    const Text(
                      'share',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins'),
                    )
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      AppAssets.print,
                      scale: 4,
                    ),
                    const Text(
                      'print',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins'),
                    )
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      AppAssets.edit,
                      scale: 4,
                    ),
                    const Text(
                      'edit',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins'),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AppButton(
                text: 'Send Invoice', onPressed: () {}, isMainOrange: true),
          ),
          40.verticalSpace,
        ],
      ),
    );
  }
}
