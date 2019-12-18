import 'package:jikan_api/jikan_api.dart';

void main() async {
  var jikan = Jikan();
  var top = await jikan.getTop(TopType.anime, subtype: TopSubtype.airing);
  print(top);
}
