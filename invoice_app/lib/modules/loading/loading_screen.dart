// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:invoice_app/core/config/router/app_router.gr.dart';
import 'package:invoice_app/core/data/shared_prefs_keys.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';
import 'package:invoice_app/core/service/shared_prefs.dart';
import 'package:invoice_app/core/theme/app_assets.dart';
import 'package:invoice_app/core/theme/app_colors.dart';
import 'package:invoice_app/main.dart';

@RoutePage()
class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  final prefs = di<SharedPrefs>();
  @override
  void initState() {
    final timer = Timer(const Duration(seconds: 3), () async {
      final isFirstRun = await prefs.read(key: SharedPrefsKeys.isFirstRun);
      if (isFirstRun == '') {
        prefs.save(key: SharedPrefsKeys.isFirstRun, value: 'false');
        context.router.popAndPush(
          const WelcomeRoute(),
        );
      } else {
        context.router.popAndPush(const DashboardRoute());
      }
    });
    timer;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            10.verticalSpace,
            Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppAssets.logo,
                    scale: 4,
                  ),
                  14.horizontalSpace,
                  const Text('Invoice Simple',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat'))
                ],
              ),
              20.verticalSpace,
              const Text(
                  'Create Proffesional invoices in seconds. \nGet started with a free trial.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat')),
            ]),
            const Text(
                'By continuing, you are agreeing to Invoice’s                            Terms of Use & Privacy Policy',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 10,
                    color: AppColors.greyText,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat'))
          ],
        ),
      ),
    );
  }
}
