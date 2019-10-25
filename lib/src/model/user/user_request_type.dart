abstract class HistoryType {}

class AnimeHistoryType extends HistoryType {
  @override
  String toString() {
    return '/anime';
  }
}

class MangaHistoryType extends HistoryType {
  @override
  String toString() {
    return '/manga';
  }
}

abstract class AnimeMangaListType {}

class AllListType extends AnimeMangaListType {
  @override
  String toString() {
    return '/all';
  }
}

class WatchingListType extends AnimeMangaListType {
  @override
  String toString() {
    return '/watching';
  }
}

class ReadingListType extends AnimeMangaListType {
  @override
  String toString() {
    return '/reading';
  }
}

class CompletedListType extends AnimeMangaListType {
  @override
  String toString() {
    return '/completed';
  }
}

class OnHoldListType extends AnimeMangaListType {
  @override
  String toString() {
    return '/onhold';
  }
}

class DroppedListType extends AnimeMangaListType {
  @override
  String toString() {
    return '/dropped';
  }
}

class PlanToWatchListType extends AnimeMangaListType {
  @override
  String toString() {
    return '/plantowatch';
  }
}

class PlanToReadListType extends AnimeMangaListType {
  @override
  String toString() {
    return '/plantoread';
  }
}
