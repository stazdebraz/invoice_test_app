import 'package:flutter/material.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';
import 'package:invoice_app/core/theme/app_colors.dart';
import 'package:invoice_app/modules/newInvoice/widget/choise_button.dart';
import 'package:invoice_app/modules/newInvoice/widget/new_invoice_app_bar.dart';
import 'package:invoice_app/modules/newInvoice/widget/new_invoice_button.dart';
import 'package:invoice_app/modules/newInvoice/widget/premium_button.dart';
import 'package:invoice_app/ui/app_button.dart';

class NewInvoiceScreen extends StatelessWidget {
  const NewInvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            20.verticalSpace,
            AppBar(
                backgroundColor: AppColors.backgroundColor,
                title: const NewInvoiceAppBar()),
            30.verticalSpace,
            ChoiseButton(),
            20.verticalSpace,
            NewInvoiceButton(
                nameText: 'Business account ',
                onPressed: () {},
                text: 'Choose Account'),
            20.verticalSpace,
            NewInvoiceButton(
                nameText: 'Client', onPressed: () {}, text: 'Add Client'),
            20.verticalSpace,
            NewInvoiceButton(
                nameText: 'Items', onPressed: () {}, text: 'Add Item'),
            const PremiumButton(),
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
