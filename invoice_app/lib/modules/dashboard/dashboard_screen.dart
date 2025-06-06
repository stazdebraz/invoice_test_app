import 'package:flutter/material.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';
import 'package:invoice_app/core/theme/app_assets.dart';
import 'package:invoice_app/core/theme/app_colors.dart';
import 'package:invoice_app/modules/dashboard/widget/border_button.dart';
import 'package:invoice_app/modules/dashboard/widget/filter.dart';
import 'package:invoice_app/ui/app_button.dart';
import 'package:invoice_app/ui/list_item_profile.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: NotificationListener(
          child: CustomScrollView(
            controller: ScrollController(),
            slivers: [
              SliverAppBar(
                shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(15))),
                toolbarHeight: 130,
                backgroundColor: Colors.white,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Total Income',
                            style: TextStyle(
                                fontSize: 15,
                                color: AppColors.greyText,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins')),
                        Text('\$ 27,000.00',
                            style: TextStyle(
                                fontSize: 50,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Montserrat')),
                      ],
                    ),
                    10.horizontalSpace,
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        AppAssets.setting,
                        scale: 4,
                      ),
                    ),
                  ],
                ),
              ),
              const SliverToBoxAdapter(
                child: Padding(padding: EdgeInsets.all(20), child: Filter()),
              ),
              SliverGrid.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 450,
                  childAspectRatio: 4,
                  mainAxisSpacing: 5,
                ),
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: ListItemProfile(
                        name: 'Test', info: 'Test', lastSeen: 'Test'),
                  );
                },
                itemCount: 4,
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      30.verticalSpace,
                      AppButton(
                        text: 'Create Invoice',
                        onPressed: () {},
                        isMainOrange: true,
                      ),
                      10.verticalSpace,
                      const BorderButton()
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
