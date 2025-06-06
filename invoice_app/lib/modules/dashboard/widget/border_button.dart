import 'package:flutter/material.dart';
import 'package:invoice_app/core/theme/app_colors.dart';

class BorderButton extends StatelessWidget {
  const BorderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            side: const BorderSide(width: 1, color: AppColors.mainOrange),
            backgroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))),
        child: const SizedBox(
          width: double.infinity,
          height: 50,
          child: Center(
            child: Text(
              'Create Estimates',
              style: TextStyle(
                  color: AppColors.mainOrange,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Montserrat'),
            ),
          ),
        ));
  }
}
