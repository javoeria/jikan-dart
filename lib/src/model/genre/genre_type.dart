abstract class GenreType {}

class AnimeType extends GenreType {
  @override
  String toString() {
    return 'anime';
  }
}

class MangaType extends GenreType {
  @override
  String toString() {
    return 'manga';
  }
}
