import 'package:flutter/material.dart';

class SendInvoiceItem extends StatefulWidget {
  const SendInvoiceItem({
    super.key,
    required this.onTap,
    required this.color,
  });
  final Function() onTap;
  final Color color;

  @override
  State<SendInvoiceItem> createState() => _SendInvoiceItemState();
}

class _SendInvoiceItemState extends State<SendInvoiceItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Has Invoice Been Paid?',
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins'),
            ),
            InkWell(
              onTap: widget.onTap,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: widget.color),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    child: Text(
                      'Mark as Paid',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
