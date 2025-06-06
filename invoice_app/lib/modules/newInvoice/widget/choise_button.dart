import 'package:flutter/material.dart';

class ChoiseButton extends StatefulWidget {
  @override
  _ChoiseButtonState createState() => _ChoiseButtonState();
}

class _ChoiseButtonState extends State<ChoiseButton> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  DateTime? selectedDate;

  Future<void> _pickDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.white,
            child: InkWell(
              onTap: _pickDate,
              child: InputDecorator(
                decoration: const InputDecoration(),
                child: Text(
                  selectedDate != null
                      ? '${selectedDate!.day.toString().padLeft(2, '0')}.${selectedDate!.month.toString().padLeft(2, '0')}.${selectedDate!.year}'
                      : '',
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.white,
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: '-',
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.white,
            child: TextField(
              controller: numberController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: '001',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
