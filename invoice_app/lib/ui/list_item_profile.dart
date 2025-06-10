import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:invoice_app/core/config/router/app_router.gr.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';
import 'package:invoice_app/core/theme/app_assets.dart';
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
    return InkWell(
      onTap: () {
        context.router.popAndPush(const EditInvoiceRoute());
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7), color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: Colors.red,
                child: Center(
                  child: Image.asset(
                    AppAssets.profile,
                    scale: 4,
                  ),
                ),
              ),
              10.horizontalSpace,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins'),
                  ),
                  Text(
                    info,
                    style: const TextStyle(
                        fontSize: 12,
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
                  fontSize: 12,
                  color: AppColors.greyText,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins'),
            )
          ],
        ),
      ),
    );
  }
}
