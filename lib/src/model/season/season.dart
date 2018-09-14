abstract class Season {}

class Summer extends Season {
  @override
  String toString() {
    return 'summer';
  }
}

class Spring extends Season {
  @override
  String toString() {
    return 'spring';
  }
}

class Fall extends Season {
  @override
  String toString() {
    return 'fall';
  }
}

class Winter extends Season {
  @override
  String toString() {
    return 'winter';
  }
}
