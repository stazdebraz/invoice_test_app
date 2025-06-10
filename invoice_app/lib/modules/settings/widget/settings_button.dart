import 'package:flutter/material.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton(
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
        child: Align(
          alignment: const Alignment(-1, 0),
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins'),
          ),
        ),
      ),
    );
  }
}
