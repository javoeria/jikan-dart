// GENERATED CODE - DO NOT MODIFY BY HAND

part of character;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Character> _$characterSerializer = new _$CharacterSerializer();

class _$CharacterSerializer implements StructuredSerializer<Character> {
  @override
  final Iterable<Type> types = const [Character, _$Character];
  @override
  final String wireName = 'Character';

  @override
  Iterable<Object?> serialize(Serializers serializers, Character object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'mal_id',
      serializers.serialize(object.malId, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'image_url',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'nicknames',
      serializers.serialize(object.nicknames,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'favorites',
      serializers.serialize(object.favorites,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.nameKanji;
    if (value != null) {
      result
        ..add('name_kanji')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.about;
    if (value != null) {
      result
        ..add('about')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.anime;
    if (value != null) {
      result
        ..add('anime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CharacterRole)])));
    }
    value = object.manga;
    if (value != null) {
      result
        ..add('manga')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CharacterRole)])));
    }
    value = object.voices;
    if (value != null) {
      result
        ..add('voices')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(VoiceActor)])));
    }
    return result;
  }

  @override
  Character deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CharacterBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'mal_id':
          result.malId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name_kanji':
          result.nameKanji = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nicknames':
          result.nicknames.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'favorites':
          result.favorites = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'about':
          result.about = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'anime':
          result.anime.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CharacterRole)]))!
              as BuiltList<Object?>);
          break;
        case 'manga':
          result.manga.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CharacterRole)]))!
              as BuiltList<Object?>);
          break;
        case 'voices':
          result.voices.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(VoiceActor)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Character extends Character {
  @override
  final int malId;
  @override
  final String url;
  @override
  final String imageUrl;
  @override
  final String name;
  @override
  final String? nameKanji;
  @override
  final BuiltList<String> nicknames;
  @override
  final int favorites;
  @override
  final String? about;
  @override
  final BuiltList<CharacterRole>? anime;
  @override
  final BuiltList<CharacterRole>? manga;
  @override
  final BuiltList<VoiceActor>? voices;

  factory _$Character([void Function(CharacterBuilder)? updates]) =>
      (new CharacterBuilder()..update(updates)).build();

  _$Character._(
      {required this.malId,
      required this.url,
      required this.imageUrl,
      required this.name,
      this.nameKanji,
      required this.nicknames,
      required this.favorites,
      this.about,
      this.anime,
      this.manga,
      this.voices})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(malId, 'Character', 'malId');
    BuiltValueNullFieldError.checkNotNull(url, 'Character', 'url');
    BuiltValueNullFieldError.checkNotNull(imageUrl, 'Character', 'imageUrl');
    BuiltValueNullFieldError.checkNotNull(name, 'Character', 'name');
    BuiltValueNullFieldError.checkNotNull(nicknames, 'Character', 'nicknames');
    BuiltValueNullFieldError.checkNotNull(favorites, 'Character', 'favorites');
  }

  @override
  Character rebuild(void Function(CharacterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CharacterBuilder toBuilder() => new CharacterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Character &&
        malId == other.malId &&
        url == other.url &&
        imageUrl == other.imageUrl &&
        name == other.name &&
        nameKanji == other.nameKanji &&
        nicknames == other.nicknames &&
        favorites == other.favorites &&
        about == other.about &&
        anime == other.anime &&
        manga == other.manga &&
        voices == other.voices;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, malId.hashCode),
                                            url.hashCode),
                                        imageUrl.hashCode),
                                    name.hashCode),
                                nameKanji.hashCode),
                            nicknames.hashCode),
                        favorites.hashCode),
                    about.hashCode),
                anime.hashCode),
            manga.hashCode),
        voices.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Character')
          ..add('malId', malId)
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('name', name)
          ..add('nameKanji', nameKanji)
          ..add('nicknames', nicknames)
          ..add('favorites', favorites)
          ..add('about', about)
          ..add('anime', anime)
          ..add('manga', manga)
          ..add('voices', voices))
        .toString();
  }
}

class CharacterBuilder implements Builder<Character, CharacterBuilder> {
  _$Character? _$v;

  int? _malId;
  int? get malId => _$this._malId;
  set malId(int? malId) => _$this._malId = malId;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _nameKanji;
  String? get nameKanji => _$this._nameKanji;
  set nameKanji(String? nameKanji) => _$this._nameKanji = nameKanji;

  ListBuilder<String>? _nicknames;
  ListBuilder<String> get nicknames =>
      _$this._nicknames ??= new ListBuilder<String>();
  set nicknames(ListBuilder<String>? nicknames) =>
      _$this._nicknames = nicknames;

  int? _favorites;
  int? get favorites => _$this._favorites;
  set favorites(int? favorites) => _$this._favorites = favorites;

  String? _about;
  String? get about => _$this._about;
  set about(String? about) => _$this._about = about;

  ListBuilder<CharacterRole>? _anime;
  ListBuilder<CharacterRole> get anime =>
      _$this._anime ??= new ListBuilder<CharacterRole>();
  set anime(ListBuilder<CharacterRole>? anime) => _$this._anime = anime;

  ListBuilder<CharacterRole>? _manga;
  ListBuilder<CharacterRole> get manga =>
      _$this._manga ??= new ListBuilder<CharacterRole>();
  set manga(ListBuilder<CharacterRole>? manga) => _$this._manga = manga;

  ListBuilder<VoiceActor>? _voices;
  ListBuilder<VoiceActor> get voices =>
      _$this._voices ??= new ListBuilder<VoiceActor>();
  set voices(ListBuilder<VoiceActor>? voices) => _$this._voices = voices;

  CharacterBuilder();

  CharacterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _malId = $v.malId;
      _url = $v.url;
      _imageUrl = $v.imageUrl;
      _name = $v.name;
      _nameKanji = $v.nameKanji;
      _nicknames = $v.nicknames.toBuilder();
      _favorites = $v.favorites;
      _about = $v.about;
      _anime = $v.anime?.toBuilder();
      _manga = $v.manga?.toBuilder();
      _voices = $v.voices?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Character other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Character;
  }

  @override
  void update(void Function(CharacterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Character build() {
    _$Character _$result;
    try {
      _$result = _$v ??
          new _$Character._(
              malId: BuiltValueNullFieldError.checkNotNull(
                  malId, 'Character', 'malId'),
              url: BuiltValueNullFieldError.checkNotNull(
                  url, 'Character', 'url'),
              imageUrl: BuiltValueNullFieldError.checkNotNull(
                  imageUrl, 'Character', 'imageUrl'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'Character', 'name'),
              nameKanji: nameKanji,
              nicknames: nicknames.build(),
              favorites: BuiltValueNullFieldError.checkNotNull(
                  favorites, 'Character', 'favorites'),
              about: about,
              anime: _anime?.build(),
              manga: _manga?.build(),
              voices: _voices?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nicknames';
        nicknames.build();

        _$failedField = 'anime';
        _anime?.build();
        _$failedField = 'manga';
        _manga?.build();
        _$failedField = 'voices';
        _voices?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Character', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
