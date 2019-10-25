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

abstract class MangaAnimeListType {}

class AllAnimeListType extends MangaAnimeListType {
  @override
  String toString() {
    return '/all';
  }
}

class WatchingAnimeListType extends MangaAnimeListType {
  @override
  String toString() {
    return '/watching';
  }
}

class ReadingMangaListType extends MangaAnimeListType {
  @override
  String toString() {
    return '/reading';
  }
}

class CompletedAnimeListType extends MangaAnimeListType {
  @override
  String toString() {
    return '/completed';
  }
}

class OnHoldAnimeListType extends MangaAnimeListType {
  @override
  String toString() {
    return '/onhold';
  }
}

class DroppedAnimeListType extends MangaAnimeListType {
  @override
  String toString() {
    return '/dropped';
  }
}

class PlanToWatchAnimeListType extends MangaAnimeListType {
  @override
  String toString() {
    return '/plantowatch';
  }
}

class PlanToReadMangaListType extends MangaAnimeListType {
  @override
  String toString() {
    return '/plantoread';
  }
}
