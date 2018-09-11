// GENERATED CODE - DO NOT MODIFY BY HAND

part of last_post_dto;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first
// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_new
// ignore_for_file: test_types_in_equals

Serializer<LastPostDto> _$lastPostDtoSerializer = new _$LastPostDtoSerializer();

class _$LastPostDtoSerializer implements StructuredSerializer<LastPostDto> {
  @override
  final Iterable<Type> types = const [LastPostDto, _$LastPostDto];
  @override
  final String wireName = 'LastPostDto';

  @override
  Iterable serialize(Serializers serializers, LastPostDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.authorName != null) {
      result
        ..add('author_name')
        ..add(serializers.serialize(object.authorName,
            specifiedType: const FullType(String)));
    }
    if (object.authorUrl != null) {
      result
        ..add('author_url')
        ..add(serializers.serialize(object.authorUrl,
            specifiedType: const FullType(String)));
    }
    if (object.datePosted != null) {
      result
        ..add('date_posted')
        ..add(serializers.serialize(object.datePosted,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  LastPostDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LastPostDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'author_name':
          result.authorName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'author_url':
          result.authorUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date_posted':
          result.datePosted = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LastPostDto extends LastPostDto {
  @override
  final String url;
  @override
  final String authorName;
  @override
  final String authorUrl;
  @override
  final String datePosted;

  factory _$LastPostDto([void updates(LastPostDtoBuilder b)]) =>
      (new LastPostDtoBuilder()..update(updates)).build();

  _$LastPostDto._({this.url, this.authorName, this.authorUrl, this.datePosted})
      : super._();

  @override
  LastPostDto rebuild(void updates(LastPostDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LastPostDtoBuilder toBuilder() => new LastPostDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LastPostDto &&
        url == other.url &&
        authorName == other.authorName &&
        authorUrl == other.authorUrl &&
        datePosted == other.datePosted;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, url.hashCode), authorName.hashCode), authorUrl.hashCode),
        datePosted.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LastPostDto')
          ..add('url', url)
          ..add('authorName', authorName)
          ..add('authorUrl', authorUrl)
          ..add('datePosted', datePosted))
        .toString();
  }
}

class LastPostDtoBuilder implements Builder<LastPostDto, LastPostDtoBuilder> {
  _$LastPostDto _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _authorName;
  String get authorName => _$this._authorName;
  set authorName(String authorName) => _$this._authorName = authorName;

  String _authorUrl;
  String get authorUrl => _$this._authorUrl;
  set authorUrl(String authorUrl) => _$this._authorUrl = authorUrl;

  String _datePosted;
  String get datePosted => _$this._datePosted;
  set datePosted(String datePosted) => _$this._datePosted = datePosted;

  LastPostDtoBuilder();

  LastPostDtoBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _authorName = _$v.authorName;
      _authorUrl = _$v.authorUrl;
      _datePosted = _$v.datePosted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LastPostDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LastPostDto;
  }

  @override
  void update(void updates(LastPostDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$LastPostDto build() {
    final _$result = _$v ??
        new _$LastPostDto._(
            url: url,
            authorName: authorName,
            authorUrl: authorUrl,
            datePosted: datePosted);
    replace(_$result);
    return _$result;
  }
}
