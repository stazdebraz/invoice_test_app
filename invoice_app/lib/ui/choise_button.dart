import 'package:flutter/material.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';
import 'package:invoice_app/core/theme/app_colors.dart';
import 'package:intl/intl.dart';
import 'package:invoice_app/ui/widget/Calendar.dart';

class ChoiseButton extends StatefulWidget {
  const ChoiseButton({super.key});

  @override
  State<ChoiseButton> createState() => _ChoiseButtonState();
}

class _ChoiseButtonState extends State<ChoiseButton> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  DateTime? selectedDate;

  Future<void> _pickDate(BuildContext context) async {
    await showModalBottomSheet(
      scrollControlDisabledMaxHeightRatio: 1,
      backgroundColor: Colors.white.withOpacity(0),
      context: context,
      builder: (context) {
        return const Calendar();
      },
    ).then((picked) {
      if (picked != null && picked is DateTime) {
        setState(() {
          selectedDate = picked;
        });
      }
    });
  }

  String get formattedDate {
    final date = selectedDate ?? DateTime.now();
    return DateFormat('dd MMMM yyyy').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Issued',
                style: TextStyle(
                  color: AppColors.greyText,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                ),
              ),
              const Text(
                'Due',
                style: TextStyle(
                  color: AppColors.greyText,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                ),
              ),
              30.horizontalSpace,
              const Text(
                '#',
                style: TextStyle(
                  color: AppColors.greyText,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 56,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.backgroundColor),
                  borderRadius:
                      const BorderRadius.horizontal(left: Radius.circular(8)),
                  color: Colors.white,
                ),
                child: InkWell(
                  onTap: () {
                    _pickDate(context);
                  },
                  child: Center(
                      child: Text(
                    formattedDate,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                    ),
                  )),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: '-',
                  hintStyle: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
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
            ),
            Expanded(
              flex: 1,
              child: TextField(
                controller: numberController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: '001',
                  hintStyle: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.backgroundColor),
                    borderRadius:
                        BorderRadius.horizontal(right: Radius.circular(8)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.backgroundColor),
                    borderRadius:
                        BorderRadius.horizontal(right: Radius.circular(8)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.backgroundColor),
                    borderRadius:
                        BorderRadius.horizontal(right: Radius.circular(8)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
