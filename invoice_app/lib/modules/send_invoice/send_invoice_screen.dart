import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';
import 'package:invoice_app/core/theme/app_assets.dart';
import 'package:invoice_app/core/theme/app_colors.dart';
import 'package:invoice_app/modules/send_invoice/widget/send_invoice_bottom_bar.dart';
import 'package:invoice_app/modules/send_invoice/widget/send_invoice_client.dart';
import 'package:invoice_app/modules/send_invoice/widget/send_invoice_delete.dart';
import 'package:invoice_app/modules/send_invoice/widget/send_invoice_item.dart';
import 'package:invoice_app/modules/send_invoice/widget/send_invoice_main_item.dart';
import 'package:invoice_app/modules/send_invoice/widget/send_invoice_snack_bar.dart';

@RoutePage()
class SendInvoiceScreen extends StatefulWidget {
  const SendInvoiceScreen({super.key});

  @override
  State<SendInvoiceScreen> createState() => _SendInvoiceScreenState();
}

class _SendInvoiceScreenState extends State<SendInvoiceScreen> {
  bool _isOnTap = false;

  void markAsPaid(BuildContext context) async {
    setState(() {
      _isOnTap = true;
    });
    await showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return const SendInvoiceSnackBar();
        });
    setState(() {
      _isOnTap = false;
    });
  }

  void delete(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.white.withOpacity(0),
        barrierColor: Colors.black.withOpacity(0.2),
        scrollControlDisabledMaxHeightRatio: 0.2,
        context: context,
        builder: (BuildContext context) {
          return const SendInvoiceDelete();
        });
  }

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
                        onPressed: () {
                          Navigator.pop(context);
                        },
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
                          onTap: () {
                            delete(context);
                          },
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
                SendInvoiceItem(
                  onTap: () {
                    markAsPaid(context);
                    setState(() {});
                  },
                  color: _isOnTap ? Colors.green : AppColors.mainOrange,
                ),
                20.verticalSpace,
                const SendInvoiceClient(),
              ],
            ),
          ),
          const SendInvoiceBottomBar()
        ],
      ),
    );
  }
}
