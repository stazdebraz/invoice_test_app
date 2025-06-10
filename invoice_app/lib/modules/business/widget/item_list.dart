import 'package:flutter/material.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';
import 'package:invoice_app/core/theme/app_assets.dart';

class ItemList extends StatefulWidget {
  const ItemList({super.key, required this.name, required this.email});
  final String name;
  final String email;

  @override
  State<ItemList> createState() => _ItemListState();
}

bool isShowDelete = false;

class _ItemListState extends State<ItemList> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7), color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.name,
                      style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins'),
                    ),
                    Text(
                      widget.email,
                      style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins'),
                    ),
                  ],
                ),
              ]),
              InkWell(
                onTap: () {
                  isShowDelete = !isShowDelete;
                  setState(() {});
                },
                child: Image.asset(
                  AppAssets.more,
                  scale: 4,
                ),
              )
            ],
          ),
        ),
        Align(
            alignment: const Alignment(0.7, 0),
            child: isShowDelete
                ? Container(
                    width: MediaQuery.of(context).size.width * 0.38,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              spreadRadius: -10,
                              blurRadius: 15,
                              color: Colors.black)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'Delete account',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.red,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins'),
                          ),
                          Image.asset(
                            AppAssets.trash,
                            scale: 4,
                          )
                        ],
                      ),
                    ),
                  )
                : SizedBox()),
      ],
    );
  }
}
