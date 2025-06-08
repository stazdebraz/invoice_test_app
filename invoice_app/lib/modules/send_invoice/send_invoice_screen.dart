import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';
import 'package:invoice_app/core/theme/app_assets.dart';
import 'package:invoice_app/core/theme/app_colors.dart';
import 'package:invoice_app/modules/send_invoice/widget/send_invoice_client.dart';
import 'package:invoice_app/modules/send_invoice/widget/send_invoice_item.dart';
import 'package:invoice_app/modules/send_invoice/widget/send_invoice_main_item.dart';
import 'package:invoice_app/ui/app_button.dart';

@RoutePage()
class SendInvoiceScreen extends StatelessWidget {
  const SendInvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 20,
                        )),
                    Row(
                      children: [
                        const Text(
                          'Preview',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins'),
                        ),
                        30.horizontalSpace,
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            AppAssets.more,
                            scale: 4,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                60.verticalSpace,
                const SendInvoiceMainItem(),
                20.verticalSpace,
                const SendInvoiceItem(),
                20.verticalSpace,
                const SendInvoiceClient(),
              ],
            ),
          ),
          Container(
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
                      text: 'Send Invoice',
                      onPressed: () {},
                      isMainOrange: true),
                ),
                40.verticalSpace,
              ],
            ),
          )
        ],
      ),
    );
  }
}
