enum ListType {
  all,
  completed,
  watching,
  reading,
  onhold,
  dropped,
  plantowatch,
  plantoread
}

String listTypeString(ListType type) {
  switch (type) {
    case ListType.all:
      return 'all';
    case ListType.completed:
      return 'completed';
    case ListType.watching:
      return 'watching';
    case ListType.reading:
      return 'reading';
    case ListType.onhold:
      return 'onhold';
    case ListType.dropped:
      return 'dropped';
    case ListType.plantowatch:
      return 'plantowatch';
    case ListType.plantoread:
      return 'plantoread';
    default:
      return '';
  }
}
