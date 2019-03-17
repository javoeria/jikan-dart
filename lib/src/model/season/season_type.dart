abstract class SeasonType {}

class Summer extends SeasonType {
  @override
  String toString() {
    return 'summer';
  }
}

class Spring extends SeasonType {
  @override
  String toString() {
    return 'spring';
  }
}

class Fall extends SeasonType {
  @override
  String toString() {
    return 'fall';
  }
}

class Winter extends SeasonType {
  @override
  String toString() {
    return 'winter';
  }
}
