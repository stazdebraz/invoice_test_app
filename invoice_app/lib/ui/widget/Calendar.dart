import 'package:flutter/material.dart';
import 'package:invoice_app/core/theme/app_colors.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Stack(
      children: [
        Align(
          alignment: const Alignment(-0.8, -0.3),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            width: mq.width * 0.7,
            height: mq.height * 0.4,
            child: TableCalendar(
              firstDay: DateTime.utc(2000, 1, 1),
              lastDay: DateTime.utc(2100, 12, 31),
              focusedDay: _focusedDay,
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  Navigator.pop(context, selectedDay);
                });
              },
              headerStyle: const HeaderStyle(
                formatButtonVisible: false,
                titleCentered: false,
                leftChevronIcon:
                    Icon(Icons.chevron_left, color: AppColors.mainOrange),
                rightChevronIcon:
                    Icon(Icons.chevron_right, color: AppColors.mainOrange),
                titleTextStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                ),
              ),
              daysOfWeekStyle: DaysOfWeekStyle(
                  weekdayStyle: TextStyle(
                      fontSize: 12,
                      color: const Color(0xff3C3C43).withOpacity(0.3),
                      fontWeight: FontWeight.w600),
                  weekendStyle: TextStyle(
                      fontSize: 12,
                      color: const Color(0xff3C3C43).withOpacity(0.3),
                      fontWeight: FontWeight.w600)),
              calendarStyle: CalendarStyle(
                selectedDecoration: BoxDecoration(
                  color: AppColors.mainOrange.withOpacity(0.3),
                  shape: BoxShape.circle,
                ),
                todayDecoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                selectedTextStyle: const TextStyle(
                    color: AppColors.mainOrange,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
                todayTextStyle: const TextStyle(
                    color: AppColors.mainOrange,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
