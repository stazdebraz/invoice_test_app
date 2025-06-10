import 'package:flutter/material.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';
import 'package:invoice_app/core/theme/app_assets.dart';
import 'package:invoice_app/core/theme/app_colors.dart';

class SendInvoiceSnackBar extends StatefulWidget {
  const SendInvoiceSnackBar({super.key});

  @override
  State<SendInvoiceSnackBar> createState() => _SendInvoiceSnackBarState();
}

class _SendInvoiceSnackBarState extends State<SendInvoiceSnackBar> {
  final BorderSide bSide = const BorderSide(width: 1, color: Color(0xffDEDEDE));
  final EdgeInsetsGeometry padding = const EdgeInsets.all(20);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Container(
      height: mq.height * 0.42,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            const Text(
              'Mark as Paid',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins'),
            ),
            10.verticalSpace,
            Container(
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.greyButton),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  child: Text(
                    '6 May 2025',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ),
            ),
            20.verticalSpace,
            const Text(
              'Select How You Received the money',
              style: TextStyle(
                  fontSize: 12,
                  color: AppColors.greyText,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins'),
            ),
            20.verticalSpace,
            Padding(
              padding: padding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border(
                            bottom: bSide,
                            top: bSide,
                            left: bSide,
                            right: bSide)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppAssets.cash,
                          scale: 4,
                        ),
                        10.verticalSpace,
                        const Text(
                          'Cash',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins'),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border(
                            bottom: bSide,
                            top: bSide,
                            left: bSide,
                            right: bSide)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppAssets.check,
                          scale: 4,
                        ),
                        0.verticalSpace,
                        const Text(
                          'Check',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins'),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border(
                            bottom: bSide,
                            top: bSide,
                            left: bSide,
                            right: bSide)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppAssets.bank,
                          scale: 4,
                        ),
                        10.verticalSpace,
                        const Text(
                          'Bank',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins'),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border(
                            bottom: bSide,
                            top: bSide,
                            left: bSide,
                            right: bSide)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppAssets.paypal,
                          scale: 4,
                        ),
                        13.verticalSpace,
                        const Text(
                          'PayPal',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins'),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            42.verticalSpace,
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Cancel',
                style: TextStyle(
                    fontSize: 12,
                    color: AppColors.greyText,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
