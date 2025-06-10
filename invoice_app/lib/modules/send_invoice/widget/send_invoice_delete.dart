import 'package:flutter/material.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';
import 'package:invoice_app/core/theme/app_colors.dart';

class SendInvoiceDelete extends StatelessWidget {
  const SendInvoiceDelete({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7))),
              child: const SizedBox(
                width: double.infinity,
                height: 50,
                child: Center(
                  child: Text(
                    'Delete Invoice',
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.mainOrange,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins'),
                  ),
                ),
              )),
          10.verticalSpace,
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7))),
              child: const SizedBox(
                width: double.infinity,
                height: 50,
                child: Center(
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.greyText,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins'),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
