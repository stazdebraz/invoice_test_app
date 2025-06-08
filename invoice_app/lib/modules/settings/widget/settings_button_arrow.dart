import 'package:flutter/material.dart';

class SettingsButtonArrow extends StatelessWidget {
  const SettingsButtonArrow(
      {super.key, required this.text, required this.onPressed});

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        color: Colors.white,
        width: double.infinity,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins'),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 14,
            )
          ],
        ),
      ),
    );
  }
}
