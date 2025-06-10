import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:invoice_app/core/config/router/app_router.gr.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';

class InvoiceAppBar extends StatelessWidget {
  const InvoiceAppBar({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins')),
            ),
            50.horizontalSpace,
            InkWell(
              onTap: () {
                context.router.popAndPush(const SendInvoiceRoute());
              },
              child: const Text('Preview',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins')),
            ),
            const Text('Done',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins'))
          ],
        ),
        Text(title,
            style: const TextStyle(
                fontSize: 26,
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins')),
      ],
    );
  }
}
