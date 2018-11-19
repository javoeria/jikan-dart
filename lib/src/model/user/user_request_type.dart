abstract class UserRequestType {}

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

class Friends extends UserRequestType {
  final int page;

  Friends({this.page = 1});

  @override
  String toString() {
    return '/friends';
  }
}

class AnimeList extends UserRequestType {
  final MangaAnimeListType listType;

  AnimeList(this.listType);

  @override
  String toString() {
    return '/animelist${listType.toString()}';
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

/**
 * Use this one only for anime
 */
class PlanToWatchAnimeListType extends MangaAnimeListType {
  @override
  String toString() {
    return '/plantowatch';
  }
}

class PlanToReadAnimeListType extends MangaAnimeListType {
  @override
  String toString() {
    return '/plantoread';
  }
}

class MangaList extends UserRequestType {
  final MangaAnimeListType listType;

  MangaList(this.listType);

  @override
  String toString() {
    return '/mangalist${listType.toString()}';
  }
}
