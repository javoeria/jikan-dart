import 'package:jikan_api/jikan_api.dart';

void main() async {
  final jikan = Jikan();
  final top = await jikan.getTopAnime(type: AnimeType.tv);
  print(top);
}
