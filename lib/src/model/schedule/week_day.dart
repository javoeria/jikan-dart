enum WeekDay {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
  other,
  unknown
}

String weekDayString(WeekDay type) {
  switch (type) {
    case WeekDay.monday:
      return 'monday';
    case WeekDay.tuesday:
      return 'tuesday';
    case WeekDay.wednesday:
      return 'wednesday';
    case WeekDay.thursday:
      return 'thursday';
    case WeekDay.friday:
      return 'friday';
    case WeekDay.saturday:
      return 'saturday';
    case WeekDay.sunday:
      return 'sunday';
    case WeekDay.other:
      return 'other';
    case WeekDay.unknown:
      return 'unknown';
    default:
      return '';
  }
}
