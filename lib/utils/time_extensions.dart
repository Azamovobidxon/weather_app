

enum WeekDay {
  monday("Monday"),
  tuesday("Tuesday"),
  wednesday("Wednesday"),
  thursday("Thursday"),
  friday("Friday"),
  saturday("Saturday"),
  sunday("Sunday");

  const WeekDay(this.dayName);

  final String dayName;
}

enum MonthName {
  january("January"),
  february("February"),
  march("March"),
  april("April"),
  may("May"),
  june("June"),
  july("July"),
  august("August"),
  september("September"),
  october("October"),
  november("November"),
  december("December");

  const MonthName(this.monthName);

  final String monthName;
}

extension TimeExetision on DateTime {
  String get weekMonthDay {
    /// weekDay -> stars with Monday equal to 1
    /// ends sunday equl to 7
    final week = WeekDay.values[weekday - 1].dayName.substring(0, 3);

    /// month -> stars with January equal to 1
    /// ends December equl to 7
    final m = MonthName.values[month - 1].monthName.substring(0, 3);
    return "$week, $m $day";
  }
}
   extension GetWeekname on int {
   String get weekName {
     final DateTime time = DateTime.fromMillisecondsSinceEpoch(this * 1000);

     return WeekDay.values[time.weekday -1].dayName;
   }
   }