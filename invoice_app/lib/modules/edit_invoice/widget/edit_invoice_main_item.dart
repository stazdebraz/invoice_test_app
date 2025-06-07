import 'package:flutter/material.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';
import 'package:invoice_app/core/theme/app_assets.dart';
import 'package:invoice_app/core/theme/app_colors.dart';

class EditInvoiceMainItem extends StatelessWidget {
  const EditInvoiceMainItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        30.verticalSpace,
        const Text(
          'Items',
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
              height: 80,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Yulia',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins'),
                        ),
                        Text(
                          'Kartavenko',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins'),
                        ),
                      ],
                    ),
                    10.horizontalSpace,
                    const Text(
                      '2000,00\$',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins'),
                    ),
                  ],
                ),
              ),
            )),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7))),
            child: SizedBox(
                width: double.infinity,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppAssets.add,
                      scale: 4,
                    ),
                    10.horizontalSpace,
                    const Text(
                      'Add item',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins'),
                    ),
                  ],
                ))),
      ],
    );
  }
}
