import 'package:flutter/material.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';

class NewInvoiceAppBar extends StatelessWidget {
  const NewInvoiceAppBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Cancel',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins')),
            50.horizontalSpace,
            const Text('Preview',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins')),
            const Text('Done',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins'))
          ],
        ),
        Text(title,
            style: const TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins')),
      ],
    );
  }
}
