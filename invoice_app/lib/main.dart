import 'package:flutter/material.dart';
import 'package:invoice_app/modules/edit_invoice/edit_invoice_screen.dart';

void main() {
  runApp(const InvoiceApp());
}

class InvoiceApp extends StatelessWidget {
  const InvoiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: EditInvoiceScreen(),
    );
  }
}
