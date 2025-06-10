import 'package:flutter/material.dart';
import 'package:invoice_app/core/theme/app_colors.dart';

class CreateBusinessTextField extends StatelessWidget {
  const CreateBusinessTextField({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: 'Optional',
        hintStyle: TextStyle(
          fontSize: 17,
          color: AppColors.greyText.withOpacity(0.3),
          fontWeight: FontWeight.w400,
          fontFamily: 'Poppins',
        ),
        filled: true,
        fillColor: Colors.white,
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.backgroundColor),
          borderRadius: BorderRadius.horizontal(right: Radius.circular(0)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.backgroundColor),
          borderRadius: BorderRadius.horizontal(right: Radius.circular(0)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.backgroundColor),
          borderRadius: BorderRadius.horizontal(right: Radius.circular(0)),
        ),
      ),
    );
  }
}
