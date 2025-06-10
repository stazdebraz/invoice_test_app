import 'package:flutter/material.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';
import 'package:invoice_app/modules/create_business/widget/create_business_text_field.dart';

class CreateBusinessInfo extends StatefulWidget {
  const CreateBusinessInfo({super.key});

  @override
  State<CreateBusinessInfo> createState() => _CreateBusinessInfoState();
}

class _CreateBusinessInfoState extends State<CreateBusinessInfo> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController addressController = TextEditingController();

  final TextEditingController currencyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          const Text(
            'Name',
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600),
          ),
          10.horizontalSpace,
          Expanded(
              child: CreateBusinessTextField(
            controller: nameController,
          )),
        ],
      ),
      Row(
        children: [
          const Text(
            'Phone',
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600),
          ),
          Expanded(child: CreateBusinessTextField(controller: phoneController)),
        ],
      ),
      Row(
        children: [
          const Text(
            'E-Mail',
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600),
          ),
          Expanded(child: CreateBusinessTextField(controller: emailController)),
        ],
      ),
      Row(
        children: [
          const Text(
            'Address',
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600),
          ),
          Expanded(
              child: CreateBusinessTextField(controller: addressController)),
        ],
      ),
      Row(
        children: [
          const Text(
            'Currency',
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600),
          ),
          Expanded(
              child: CreateBusinessTextField(controller: currencyController)),
        ],
      ),
    ]);
  }
}
