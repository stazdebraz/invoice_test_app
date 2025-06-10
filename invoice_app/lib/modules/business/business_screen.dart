import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:invoice_app/core/config/router/app_router.gr.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';
import 'package:invoice_app/core/theme/app_colors.dart';
import 'package:invoice_app/modules/business/widget/item_list.dart';
import 'package:invoice_app/ui/app_button.dart';

@RoutePage()
class BusinessScreen extends StatelessWidget {
  const BusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [
            NotificationListener(
                child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      10.verticalSpace,
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
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins'),
                          ),
                          10.horizontalSpace
                        ],
                      ),
                      10.verticalSpace
                    ],
                  ),
                ),
                SliverGrid.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10,
                      childAspectRatio: 4,
                      crossAxisCount: 1),
                  itemBuilder: (BuildContext context, int index) {
                    return const ItemList(
                      name: 'Test',
                      email: 'Test',
                    );
                  },
                ),
              ],
            )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AppButton(
                      text: 'Add New',
                      onPressed: () {
                        context.router.popAndPush(CreateBusinessRoute());
                      },
                      isMainOrange: false),
                  40.verticalSpace
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
