import 'package:jikan_dart/jikan_dart.dart';
import 'package:jikan_dart/src/model/top_type.dart';

main() async {
//  var awesome = new Awesome();
//  print('awesome: ${awesome.isAwesome}');
  var jikanApi = JikanApi();
  var top = await jikanApi.getTop(TopType.manga, page: 2);
  print('response is ${top}');



}
