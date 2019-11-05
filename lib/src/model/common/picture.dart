library picture;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'picture.g.dart';

abstract class Picture implements Built<Picture, PictureBuilder> {
  Picture._();

  factory Picture([updates(PictureBuilder b)]) = _$Picture;

  @BuiltValueField(wireName: 'large')
  String get large;

  @BuiltValueField(wireName: 'small')
  String get small;

  String toJson() {
    return json.encode(serializers.serializeWith(Picture.serializer, this));
  }

  static Picture fromJson(String jsonString) {
    return serializers.deserializeWith(
        Picture.serializer, json.decode(jsonString));
  }

  static Serializer<Picture> get serializer => _$pictureSerializer;
}
