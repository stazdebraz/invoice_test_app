import 'package:flutter/material.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';
import 'package:invoice_app/core/theme/app_assets.dart';
import 'package:invoice_app/core/theme/app_colors.dart';

class NewInvoiceButton extends StatelessWidget {
  const NewInvoiceButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.nameText});
  final String text;
  final String nameText;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          nameText,
          style: const TextStyle(
              color: AppColors.greyText,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins'),
        ),
        ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7))),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppAssets.add,
                      scale: 4,
                    ),
                    10.horizontalSpace,
                    Text(
                      text,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins'),
                    ),
                  ],
                ),
              ),
            ))
      ],
    );
  }
}
