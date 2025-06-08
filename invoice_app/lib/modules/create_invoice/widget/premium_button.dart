import 'package:flutter/material.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';
import 'package:invoice_app/core/theme/app_assets.dart';
import 'package:invoice_app/core/theme/app_colors.dart';

class PremiumButton extends StatelessWidget {
  const PremiumButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Photos',
          style: TextStyle(
              color: AppColors.greyText,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins'),
        ),
        ElevatedButton(
            onPressed: () {},
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
                    const Text(
                      'Add Photo',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins'),
                    ),
                    10.horizontalSpace,
                    Image.asset(
                      AppAssets.premium,
                      scale: 4,
                    ),
                  ],
                ),
              ),
            ))
      ],
    );
  }
}
