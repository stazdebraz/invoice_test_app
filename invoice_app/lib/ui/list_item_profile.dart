import 'package:flutter/material.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';
import 'package:invoice_app/core/theme/app_colors.dart';

class ListItemProfile extends StatelessWidget {
  const ListItemProfile(
      {super.key,
      required this.name,
      required this.info,
      required this.lastSeen});
  final String name;
  final String info;
  final String lastSeen;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(10),
      height: mq.height * 0.12,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            const CircleAvatar(
              radius: 35,
              backgroundColor: Colors.red,
            ),
            10.horizontalSpace,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins'),
                ),
                Text(
                  info,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),
                )
              ],
            ),
          ]),
          Text(
            lastSeen,
            style: const TextStyle(
                color: AppColors.greyText,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins'),
          )
        ],
      ),
    );
  }
}
