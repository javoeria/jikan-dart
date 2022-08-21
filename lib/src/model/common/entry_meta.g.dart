// GENERATED CODE - DO NOT MODIFY BY HAND

part of entry_meta;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EntryMeta> _$entryMetaSerializer = new _$EntryMetaSerializer();

class _$EntryMetaSerializer implements StructuredSerializer<EntryMeta> {
  @override
  final Iterable<Type> types = const [EntryMeta, _$EntryMeta];
  @override
  final String wireName = 'EntryMeta';

  @override
  Iterable<Object?> serialize(Serializers serializers, EntryMeta object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'mal_id',
      serializers.serialize(object.malId, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'image_url',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  EntryMeta deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EntryMetaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'mal_id':
          result.malId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$EntryMeta extends EntryMeta {
  @override
  final int malId;
  @override
  final String url;
  @override
  final String imageUrl;
  @override
  final String title;

  factory _$EntryMeta([void Function(EntryMetaBuilder)? updates]) =>
      (new EntryMetaBuilder()..update(updates))._build();

  _$EntryMeta._(
      {required this.malId,
      required this.url,
      required this.imageUrl,
      required this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(malId, r'EntryMeta', 'malId');
    BuiltValueNullFieldError.checkNotNull(url, r'EntryMeta', 'url');
    BuiltValueNullFieldError.checkNotNull(imageUrl, r'EntryMeta', 'imageUrl');
    BuiltValueNullFieldError.checkNotNull(title, r'EntryMeta', 'title');
  }

  @override
  EntryMeta rebuild(void Function(EntryMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntryMetaBuilder toBuilder() => new EntryMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntryMeta &&
        malId == other.malId &&
        url == other.url &&
        imageUrl == other.imageUrl &&
        title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, malId.hashCode), url.hashCode), imageUrl.hashCode),
        title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntryMeta')
          ..add('malId', malId)
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('title', title))
        .toString();
  }
}

class EntryMetaBuilder implements Builder<EntryMeta, EntryMetaBuilder> {
  _$EntryMeta? _$v;

  int? _malId;
  int? get malId => _$this._malId;
  set malId(int? malId) => _$this._malId = malId;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  EntryMetaBuilder();

  EntryMetaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _malId = $v.malId;
      _url = $v.url;
      _imageUrl = $v.imageUrl;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntryMeta other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EntryMeta;
  }

  @override
  void update(void Function(EntryMetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntryMeta build() => _build();

  _$EntryMeta _build() {
    final _$result = _$v ??
        new _$EntryMeta._(
            malId: BuiltValueNullFieldError.checkNotNull(
                malId, r'EntryMeta', 'malId'),
            url:
                BuiltValueNullFieldError.checkNotNull(url, r'EntryMeta', 'url'),
            imageUrl: BuiltValueNullFieldError.checkNotNull(
                imageUrl, r'EntryMeta', 'imageUrl'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'EntryMeta', 'title'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
