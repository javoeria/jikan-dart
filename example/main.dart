import 'package:jikan_api/jikan_api.dart';

void main() async {
  var jikan = Jikan();
  var top = await jikan.getTopAnime(type: TopType.tv, subtype: TopSubtype.airing);
  print(top);
}
