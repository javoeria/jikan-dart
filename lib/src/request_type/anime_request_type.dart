abstract class AnimeRequestType {}

class CharactersStuff extends AnimeRequestType {
  @override
  String toString() {
    return '/characters_stuff';
  }
}

class Episodes extends AnimeRequestType {
  final int pageNumber;

  Episodes({this.pageNumber = 1});

  @override
  String toString() {
    return '/episodes/$pageNumber';
  }
}

class News extends AnimeRequestType {
  @override
  String toString() {
    return '/news';
  }
}

class Pictures extends AnimeRequestType {
  @override
  String toString() {
    return '/pictures';
  }
}

class Videos extends AnimeRequestType {
  @override
  String toString() {
    return '/videos';
  }
}

class Stats extends AnimeRequestType {
  @override
  String toString() {
    return '/stats';
  }
}

class Forum extends AnimeRequestType {
  @override
  String toString() {
    return '/forum';
  }
}

class MoreInfo extends AnimeRequestType {
  @override
  String toString() {
    return '/moreinfo';
  }
}
