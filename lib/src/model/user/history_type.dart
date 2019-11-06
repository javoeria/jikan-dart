enum HistoryType { anime, manga }

String historyTypeString(HistoryType type) {
  switch (type) {
    case HistoryType.anime:
      return 'anime';
    case HistoryType.manga:
      return 'manga';
    default:
      return '';
  }
}
