import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:invoice_app/core/config/router/app_router.gr.dart';
import 'package:invoice_app/core/theme/app_colors.dart';
import 'package:invoice_app/modules/settings/widget/settings_button_arrow.dart';
import 'package:invoice_app/modules/settings/widget/settings_button.dart';

@RoutePage()
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            height: 80,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 20,
                )),
          ),
          Align(
            alignment: const Alignment(1, -0.5),
            child: Container(
              color: Colors.white,
              width: mq.width * 0.95,
              height: mq.height * 0.6,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: [
                    SettingsButtonArrow(
                      text: 'Business Information',
                      onPressed: () {
                        context.router.popAndPush(const BusinessRoute());
                      },
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: AppColors.backgroundColor,
                    ),
                    SettingsButtonArrow(
                      text: 'Clients',
                      onPressed: () {},
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: AppColors.backgroundColor,
                    ),
                    SettingsButtonArrow(
                      text: 'Items',
                      onPressed: () {},
                    ),
                    SettingsButton(
                      text: 'Privacy',
                      onPressed: () {},
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: AppColors.backgroundColor,
                    ),
                    SettingsButton(
                      text: 'Terms',
                      onPressed: () {},
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: AppColors.backgroundColor,
                    ),
                    SettingsButton(
                      text: 'Contact',
                      onPressed: () {},
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: AppColors.backgroundColor,
                    ),
                    SettingsButton(
                      text: 'Rate App',
                      onPressed: () {},
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: AppColors.backgroundColor,
                    ),
                    SettingsButton(
                      text: 'Share App',
                      onPressed: () {},
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: AppColors.backgroundColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
