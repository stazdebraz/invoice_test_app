import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';
import 'package:invoice_app/modules/edit_invoice/widget/edit_invoice_item.dart';
import 'package:invoice_app/modules/edit_invoice/widget/edit_invoice_items.dart';
import 'package:invoice_app/modules/edit_invoice/widget/edit_invoice_main_item.dart';
import 'package:invoice_app/modules/edit_invoice/widget/edit_invoice_text_field.dart';
import 'package:invoice_app/modules/create_invoice/widget/premium_button.dart';
import 'package:invoice_app/ui/app_button.dart';
import 'package:invoice_app/ui/choise_button.dart';
import 'package:invoice_app/ui/invoice_app_bar.dart';

@RoutePage()
class EditInvoiceScreen extends StatefulWidget {
  const EditInvoiceScreen({super.key});

  @override
  State<EditInvoiceScreen> createState() => _EditInvoiceScreenState();
}

class _EditInvoiceScreenState extends State<EditInvoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NotificationListener(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          controller: ScrollController(),
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  AppBar(
                    title: const NewInvoiceAppBar(
                      title: 'Edit invoice',
                    ),
                  ),
                  30.verticalSpace,
                  const ChoiseButton(),
                  30.verticalSpace,
                  const EditInvoiceItem(
                    price: '',
                    upName: 'Client',
                    name: 'Yulia',
                  ),
                ],
              ),
            ),
            const SliverToBoxAdapter(child: EditInvoiceMainItem()),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  30.verticalSpace,
                  const EditInvoiceItem(
                    price: '2000,00\$',
                    upName: 'Summary',
                    name: 'Subtotal',
                  ),
                  const EditInvoiceItems(
                    price: '0,00',
                    name: 'Discount',
                  ),
                  const EditInvoiceItems(
                    price: '0,00',
                    name: 'Tax',
                  ),
                  const EditInvoiceItems(
                    price: '2000,00\$',
                    name: 'Total',
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  30.verticalSpace,
                  const PremiumButton(),
                  const EditInvoiceTextField(),
                  30.verticalSpace,
                  AppButton(
                    text: 'Delete Invoice',
                    onPressed: () {},
                    isMainOrange: false,
                  ),
                  10.verticalSpace,
                  AppButton(
                    text: 'Save',
                    onPressed: () {},
                    isMainOrange: true,
                  ),
                  80.verticalSpace
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
