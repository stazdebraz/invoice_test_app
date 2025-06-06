import 'package:flutter/material.dart';
import 'package:invoice_app/core/theme/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.isMainOrange});
  final String text;
  final Function() onPressed;
  final bool isMainOrange;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor:
                isMainOrange ? AppColors.mainOrange : AppColors.greyButton,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Montserrat'),
            ),
          ),
        ));
  }
}
