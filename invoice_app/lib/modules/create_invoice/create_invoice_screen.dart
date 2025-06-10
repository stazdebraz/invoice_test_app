import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';
import 'package:invoice_app/core/theme/app_colors.dart';
import 'package:invoice_app/ui/choise_button.dart';
import 'package:invoice_app/ui/invoice_app_bar.dart';
import 'package:invoice_app/modules/create_invoice/widget/create_invoice_button.dart';
import 'package:invoice_app/modules/create_invoice/widget/premium_button.dart';
import 'package:invoice_app/ui/app_button.dart';

@RoutePage()
class CreateInvoiceScreen extends StatelessWidget {
  const CreateInvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            30.verticalSpace,
            const InvoiceAppBar(
              title: 'New invoice',
            ),
            30.verticalSpace,
            const ChoiseButton(),
            20.verticalSpace,
            CreateInvoiceButton(
                upText: 'Business account ',
                onPressed: () {},
                text: 'Choose Account'),
            20.verticalSpace,
            CreateInvoiceButton(
                upText: 'Client', onPressed: () {}, text: 'Add Client'),
            20.verticalSpace,
            CreateInvoiceButton(
                upText: 'Items', onPressed: () {}, text: 'Add Item'),
            20.verticalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Summary',
                  style: TextStyle(
                      fontSize: 12,
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Total',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins'),
                            ),
                            10.horizontalSpace,
                            const Text(
                              '0,00\$',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins'),
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
            20.verticalSpace,
            const PremiumButton(),
            80.verticalSpace,
            Padding(
              padding: const EdgeInsets.all(20),
              child: AppButton(
                  text: 'Create New Invoice',
                  onPressed: () {},
                  isMainOrange: true),
            ),
          ],
        ),
      ),
    );
  }
}
