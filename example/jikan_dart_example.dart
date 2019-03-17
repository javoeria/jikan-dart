import 'package:jikan_dart/jikan_dart.dart';

main() async {
  var jikanApi = JikanApi();
  var top = await jikanApi.getTop(TopType.manga, page: 2);
  print('result $top');
}
