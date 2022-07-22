import 'package:flutter/material.dart';
import 'package:flutter_application/constants/app_colors.dart';
import 'package:flutter_application/lib.dart';
import 'package:intl/intl.dart';
import 'package:tuple/tuple.dart';

class DateWeeklyWidget extends StatefulWidget {
  const DateWeeklyWidget({Key? key}) : super(key: key);

  @override
  _DateWeeklyWidgetState createState() => _DateWeeklyWidgetState();
}

class _DateWeeklyWidgetState extends State<DateWeeklyWidget> {
  List<Tuple2<String, DateTime>> weeklyData = [];
  DateTime currentDate = DateTime.now();
  DateTime selectedDate = DateTime.now();
  int selectedIndex = 0;

  @override
  initState() {
    super.initState();
    weeklyData = generateDate(currentDate);
    selectedIndex = currentDate.weekday - 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 148,
      decoration: BoxDecoration(
          color: context.colorScheme.secondaryContainer,
          borderRadius: const BorderRadius.all(
            Radius.circular(24),
          ),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 4),
                blurRadius: 4,
                color: context.colorScheme.onSecondaryContainer)
          ]),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                DateFormat("dd MMMM").format(selectedDate),
                style: context.textTheme.bodyText1
                    ?.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const Spacer(),
              Material(
                type: MaterialType.transparency,
                child: InkResponse(
                  radius: 18,
                  onTap: () {
                    _actionClick(isClickNext: false);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: context.colorScheme.secondary,
                      size: 20,
                    ),
                  ),
                ),
              ),
              Material(
                type: MaterialType.transparency,
                child: InkResponse(
                  radius: 18,
                  onTap: () {
                    _actionClick(isClickNext: true);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: context.colorScheme.secondary,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: weeklyData
                .asMap()
                .entries
                .map(
                  (e) => GestureDetector(
                    onTap: () {
                      selectedIndex = e.key;
                      setState(() {});
                    },
                    child: Container(
                      width: 44,
                      decoration: BoxDecoration(
                        color: selectedIndex == e.key
                            ? AppColors.h0D6EFD
                            : Colors.transparent,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Column(
                        children: [
                          Text(
                            e.value.item1,
                            style: context.textTheme.bodyText2
                                ?.copyWith(fontSize: 15),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            e.value.item2.day.toString(),
                            style: context.textTheme.bodyText1
                                ?.copyWith(fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }

  void _actionClick({required bool isClickNext}) {
    if (isClickNext) {
      currentDate = currentDate.add(const Duration(days: 7));
    } else {
      currentDate = currentDate.subtract(const Duration(days: 7));
    }
    weeklyData = generateDate(currentDate);
    bool consistsOfNow = false;
    final tempDate = DateTime.now();
    for (var element in weeklyData) {
      if (element.item2.year == tempDate.year &&
          element.item2.month == tempDate.month &&
          element.item2.day == tempDate.day) {
        consistsOfNow = true;
        break;
      }
    }
    if (consistsOfNow) {
      selectedIndex = tempDate.weekday - 1;
    } else {
      selectedIndex = 0;
    }
    setState(() {});
  }

  List<Tuple2<String, DateTime>> generateDate(DateTime date) {
    List<Tuple2<String, DateTime>> result = [];
    DateTime startDate = getDate(
      date.subtract(
        Duration(days: date.weekday - 1),
      ),
    );
    for (int i = 0; i < 7; i++) {
      DateTime dateTime = getDate(startDate.add(Duration(days: i)));
      print(
          "gen date: $dateTime day of week: ${DateFormat('EEE').format(dateTime)}");
      result.add(Tuple2(DateFormat('EEE').format(dateTime), dateTime));
    }
    return result;
  }

  DateTime getDate(DateTime d) => DateTime(d.year, d.month, d.day);
}
