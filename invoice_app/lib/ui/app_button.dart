import 'package:flutter/material.dart';
import 'package:invoice_app/core/theme/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.text, required this.onPressed});
  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.mainOrange,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))),
        child: SizedBox(
          width: mq.width * 0.75,
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
