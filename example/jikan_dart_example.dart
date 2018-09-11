import 'package:jikan_dart/jikan_dart.dart';
import 'package:jikan_dart/src/model/top_type.dart';
import 'package:jikan_dart/src/request_type/anime_request_type.dart';

main() async {
//  var awesome = new Awesome();
//  print('awesome: ${awesome.isAwesome}');
  var jikanApi = JikanApi();
//  var top = await jikanApi.getTop(TopType.manga, page: 2);
//  var top = await jikanApi.getAnime(1, MoreInfo());
//  var top = await jikanApi.getAnime(1, MoreInfo());
//  var top = await jikanApi.getAnimeMoreInfo(1);
//  var top = await jikanApi.getAnimeEpisodes(1);
  var top = await jikanApi.getAnimeForum(1);
  print('response is ${top}');



}
