import 'package:flutter/material.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';
import 'package:invoice_app/core/theme/app_colors.dart';

class SendInvoiceMainItem extends StatelessWidget {
  const SendInvoiceMainItem({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      height: mq.height * 0.2,
      width: mq.width * 0.9,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const Text(
              'Edit to add client',
              style: TextStyle(
                  fontSize: 16,
                  color: AppColors.greyText,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins'),
            ),
            const Text(
              '0, 00 \$',
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins'),
            ),
            5.verticalSpace,
            Container(
              width: mq.width * 0.55,
              decoration: BoxDecoration(
                  border: const Border(
                    top: BorderSide(width: 1, color: AppColors.greyButton),
                    bottom: BorderSide(width: 1, color: AppColors.greyButton),
                    left: BorderSide(width: 1, color: AppColors.greyButton),
                    right: BorderSide(width: 1, color: AppColors.greyButton),
                  ),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '+ Add Receivesd Payment',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
