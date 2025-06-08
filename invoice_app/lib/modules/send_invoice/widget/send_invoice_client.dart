import 'package:flutter/material.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';
import 'package:invoice_app/core/theme/app_colors.dart';

class SendInvoiceClient extends StatelessWidget {
  const SendInvoiceClient({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Issued',
            style: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins'),
          ),
          Text(
            '5 may 2025',
            style: TextStyle(
                fontSize: 12,
                color: AppColors.greyText,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins'),
          ),
        ],
      ),
      10.verticalSpace,
      Container(
        height: 0.5,
        color: AppColors.greyButton,
      ),
      10.verticalSpace,
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Invoice #',
            style: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins'),
          ),
          Text(
            '003',
            style: TextStyle(
                fontSize: 12,
                color: AppColors.greyText,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins'),
          ),
        ],
      )
    ]);
  }
}
