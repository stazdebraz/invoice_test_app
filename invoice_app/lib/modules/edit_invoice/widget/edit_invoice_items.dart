import 'package:flutter/material.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';

class EditInvoiceItems extends StatelessWidget {
  const EditInvoiceItems({super.key, required this.price, required this.name});
  final String price;
  final String name;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins'),
                ),
                10.horizontalSpace,
                Text(
                  price,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins'),
                ),
              ],
            ),
          ),
        ));
  }
}
