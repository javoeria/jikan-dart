enum SeasonType { spring, summer, fall, winter }

String seasonTypeToString(SeasonType type) {
  switch (type) {
    case SeasonType.spring:
      return 'spring';
    case SeasonType.summer:
      return 'summer';
    case SeasonType.fall:
      return 'fall';
    case SeasonType.winter:
      return 'winter';
    default:
      return '';
  }
}
