import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';
import 'package:invoice_app/core/theme/app_assets.dart';
import 'package:invoice_app/core/theme/app_colors.dart';
import 'package:invoice_app/modules/create_business/widget/create_business_info.dart';
import 'package:invoice_app/ui/app_button.dart';

@RoutePage()
class CreateBusinessScreen extends StatefulWidget {
  const CreateBusinessScreen({super.key});

  @override
  State<CreateBusinessScreen> createState() => _CreateBusinessScreenState();
}

class _CreateBusinessScreenState extends State<CreateBusinessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 20,
                    )),
                const Text(
                  'Business',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600),
                ),
                10.horizontalSpace
              ],
            ),
            Container(
              padding: const EdgeInsets.all(30),
              color: Colors.white,
              child: Stack(
                children: [
                  Image.asset(
                    AppAssets.border,
                    scale: 4,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    top: 15,
                    child: Column(
                      children: [
                        Image.asset(
                          AppAssets.addImage,
                          scale: 4,
                        ),
                        const Text('Add Logo')
                      ],
                    ),
                  )
                ],
              ),
            ),
            30.verticalSpace,
            const Text(
              'Business Information',
              style: TextStyle(
                  color: AppColors.greyText,
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400),
            ),
            10.verticalSpace,
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: const CreateBusinessInfo(),
            ),
            60.verticalSpace,
            Column(
              children: [
                const Text(
                  'You have no signature now',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600),
                ),
                10.verticalSpace,
                AppButton(
                    text: 'create a signature',
                    onPressed: () {},
                    isMainOrange: false)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
