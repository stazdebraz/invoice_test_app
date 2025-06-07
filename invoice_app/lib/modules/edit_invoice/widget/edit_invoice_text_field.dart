import 'package:flutter/material.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';
import 'package:invoice_app/core/theme/app_colors.dart';

class EditInvoiceTextField extends StatefulWidget {
  const EditInvoiceTextField({super.key});

  @override
  State<EditInvoiceTextField> createState() => _EditInvoiceTextFieldState();
}

class _EditInvoiceTextFieldState extends State<EditInvoiceTextField> {
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        30.verticalSpace,
        const Text(
          'Notes & Payment Instructions',
          style: TextStyle(
              color: AppColors.greyText,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins'),
        ),
        TextField(
          minLines: 3,
          maxLines: 7,
          controller: nameController,
          decoration: const InputDecoration(
            hintText: 'Optional',
            hintStyle: TextStyle(
              color: AppColors.greyText,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins',
            ),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.backgroundColor),
              borderRadius: BorderRadius.all(Radius.circular(0)),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.backgroundColor),
              borderRadius: BorderRadius.all(Radius.circular(0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.backgroundColor),
              borderRadius: BorderRadius.all(Radius.circular(0)),
            ),
          ),
        ),
      ],
    );
  }
}
