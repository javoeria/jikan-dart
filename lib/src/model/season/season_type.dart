enum SeasonType { summer, spring, fall, winter }

String seasonTypeToString(SeasonType type) {
  switch (type) {
    case SeasonType.summer:
      return 'summer';
    case SeasonType.spring:
      return 'spring';
    case SeasonType.fall:
      return 'fall';
    case SeasonType.winter:
      return 'winter';
    default:
      return '';
  }
}
