import 'package:flutter/material.dart';
import 'package:invoice_app/core/theme/app_colors.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  int isTypebutton = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
            onPressed: () {
              setState(() {});
              isTypebutton = 0;
            },
            style: ElevatedButton.styleFrom(
                side: BorderSide(
                  width: 1,
                  color: isTypebutton == 0
                      ? AppColors.mainOrange
                      : AppColors.greyButton,
                ),
                backgroundColor:
                    isTypebutton == 0 ? AppColors.mainOrange : Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7))),
            child: SizedBox(
              height: 40,
              width: 50,
              child: Center(
                child: Text(
                  'All',
                  style: TextStyle(
                      fontSize: 16,
                      color: isTypebutton == 0
                          ? Colors.white
                          : AppColors.greyButton,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Poppins'),
                ),
              ),
            )),
        ElevatedButton(
            onPressed: () {
              setState(() {});
              isTypebutton = 1;
            },
            style: ElevatedButton.styleFrom(
                side: BorderSide(
                  width: 1,
                  color: isTypebutton == 1
                      ? AppColors.mainOrange
                      : AppColors.greyButton,
                ),
                backgroundColor:
                    isTypebutton == 1 ? AppColors.mainOrange : Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7))),
            child: SizedBox(
              height: 40,
              width: 100,
              child: Center(
                child: Text(
                  'Outstanding',
                  style: TextStyle(
                      fontSize: 16,
                      color: isTypebutton == 1
                          ? Colors.white
                          : AppColors.greyButton,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Poppins'),
                ),
              ),
            )),
        ElevatedButton(
            onPressed: () {
              setState(() {});
              isTypebutton = 2;
            },
            style: ElevatedButton.styleFrom(
                side: BorderSide(
                  width: 1,
                  color: isTypebutton == 2
                      ? AppColors.mainOrange
                      : AppColors.greyButton,
                ),
                backgroundColor:
                    isTypebutton == 2 ? AppColors.mainOrange : Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7))),
            child: SizedBox(
              height: 40,
              width: 50,
              child: Center(
                child: Text(
                  'Paid',
                  style: TextStyle(
                      fontSize: 16,
                      color: isTypebutton == 2
                          ? Colors.white
                          : AppColors.greyButton,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Poppins'),
                ),
              ),
            )),
      ],
    );
  }
}
