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
  Iterable<Object> serialize(Serializers serializers, Character object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'mal_id',
      serializers.serialize(object.malId, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'nicknames',
      serializers.serialize(object.nicknames,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'about',
      serializers.serialize(object.about,
          specifiedType: const FullType(String)),
      'member_favorites',
      serializers.serialize(object.memberFavorites,
          specifiedType: const FullType(int)),
      'image_url',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'animeography',
      serializers.serialize(object.animeography,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CharacterRole)])),
      'mangaography',
      serializers.serialize(object.mangaography,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CharacterRole)])),
      'voice_actors',
      serializers.serialize(object.voiceActors,
          specifiedType:
              const FullType(BuiltList, const [const FullType(VoiceActor)])),
    ];
    if (object.nameKanji != null) {
      result
        ..add('name_kanji')
        ..add(serializers.serialize(object.nameKanji,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Character deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CharacterBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'mal_id':
          result.malId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name_kanji':
          result.nameKanji = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nicknames':
          result.nicknames.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'about':
          result.about = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'member_favorites':
          result.memberFavorites = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'animeography':
          result.animeography.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CharacterRole)]))
              as BuiltList<Object>);
          break;
        case 'mangaography':
          result.mangaography.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CharacterRole)]))
              as BuiltList<Object>);
          break;
        case 'voice_actors':
          result.voiceActors.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(VoiceActor)]))
              as BuiltList<Object>);
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
  final String name;
  @override
  final String nameKanji;
  @override
  final BuiltList<String> nicknames;
  @override
  final String about;
  @override
  final int memberFavorites;
  @override
  final String imageUrl;
  @override
  final BuiltList<CharacterRole> animeography;
  @override
  final BuiltList<CharacterRole> mangaography;
  @override
  final BuiltList<VoiceActor> voiceActors;

  factory _$Character([void Function(CharacterBuilder) updates]) =>
      (new CharacterBuilder()..update(updates)).build();

  _$Character._(
      {this.malId,
      this.url,
      this.name,
      this.nameKanji,
      this.nicknames,
      this.about,
      this.memberFavorites,
      this.imageUrl,
      this.animeography,
      this.mangaography,
      this.voiceActors})
      : super._() {
    if (malId == null) {
      throw new BuiltValueNullFieldError('Character', 'malId');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Character', 'url');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Character', 'name');
    }
    if (nicknames == null) {
      throw new BuiltValueNullFieldError('Character', 'nicknames');
    }
    if (about == null) {
      throw new BuiltValueNullFieldError('Character', 'about');
    }
    if (memberFavorites == null) {
      throw new BuiltValueNullFieldError('Character', 'memberFavorites');
    }
    if (imageUrl == null) {
      throw new BuiltValueNullFieldError('Character', 'imageUrl');
    }
    if (animeography == null) {
      throw new BuiltValueNullFieldError('Character', 'animeography');
    }
    if (mangaography == null) {
      throw new BuiltValueNullFieldError('Character', 'mangaography');
    }
    if (voiceActors == null) {
      throw new BuiltValueNullFieldError('Character', 'voiceActors');
    }
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
        name == other.name &&
        nameKanji == other.nameKanji &&
        nicknames == other.nicknames &&
        about == other.about &&
        memberFavorites == other.memberFavorites &&
        imageUrl == other.imageUrl &&
        animeography == other.animeography &&
        mangaography == other.mangaography &&
        voiceActors == other.voiceActors;
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
                                        name.hashCode),
                                    nameKanji.hashCode),
                                nicknames.hashCode),
                            about.hashCode),
                        memberFavorites.hashCode),
                    imageUrl.hashCode),
                animeography.hashCode),
            mangaography.hashCode),
        voiceActors.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Character')
          ..add('malId', malId)
          ..add('url', url)
          ..add('name', name)
          ..add('nameKanji', nameKanji)
          ..add('nicknames', nicknames)
          ..add('about', about)
          ..add('memberFavorites', memberFavorites)
          ..add('imageUrl', imageUrl)
          ..add('animeography', animeography)
          ..add('mangaography', mangaography)
          ..add('voiceActors', voiceActors))
        .toString();
  }
}

class CharacterBuilder implements Builder<Character, CharacterBuilder> {
  _$Character _$v;

  int _malId;
  int get malId => _$this._malId;
  set malId(int malId) => _$this._malId = malId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _nameKanji;
  String get nameKanji => _$this._nameKanji;
  set nameKanji(String nameKanji) => _$this._nameKanji = nameKanji;

  ListBuilder<String> _nicknames;
  ListBuilder<String> get nicknames =>
      _$this._nicknames ??= new ListBuilder<String>();
  set nicknames(ListBuilder<String> nicknames) => _$this._nicknames = nicknames;

  String _about;
  String get about => _$this._about;
  set about(String about) => _$this._about = about;

  int _memberFavorites;
  int get memberFavorites => _$this._memberFavorites;
  set memberFavorites(int memberFavorites) =>
      _$this._memberFavorites = memberFavorites;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  ListBuilder<CharacterRole> _animeography;
  ListBuilder<CharacterRole> get animeography =>
      _$this._animeography ??= new ListBuilder<CharacterRole>();
  set animeography(ListBuilder<CharacterRole> animeography) =>
      _$this._animeography = animeography;

  ListBuilder<CharacterRole> _mangaography;
  ListBuilder<CharacterRole> get mangaography =>
      _$this._mangaography ??= new ListBuilder<CharacterRole>();
  set mangaography(ListBuilder<CharacterRole> mangaography) =>
      _$this._mangaography = mangaography;

  ListBuilder<VoiceActor> _voiceActors;
  ListBuilder<VoiceActor> get voiceActors =>
      _$this._voiceActors ??= new ListBuilder<VoiceActor>();
  set voiceActors(ListBuilder<VoiceActor> voiceActors) =>
      _$this._voiceActors = voiceActors;

  CharacterBuilder();

  CharacterBuilder get _$this {
    if (_$v != null) {
      _malId = _$v.malId;
      _url = _$v.url;
      _name = _$v.name;
      _nameKanji = _$v.nameKanji;
      _nicknames = _$v.nicknames?.toBuilder();
      _about = _$v.about;
      _memberFavorites = _$v.memberFavorites;
      _imageUrl = _$v.imageUrl;
      _animeography = _$v.animeography?.toBuilder();
      _mangaography = _$v.mangaography?.toBuilder();
      _voiceActors = _$v.voiceActors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Character other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Character;
  }

  @override
  void update(void Function(CharacterBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Character build() {
    _$Character _$result;
    try {
      _$result = _$v ??
          new _$Character._(
              malId: malId,
              url: url,
              name: name,
              nameKanji: nameKanji,
              nicknames: nicknames.build(),
              about: about,
              memberFavorites: memberFavorites,
              imageUrl: imageUrl,
              animeography: animeography.build(),
              mangaography: mangaography.build(),
              voiceActors: voiceActors.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'nicknames';
        nicknames.build();

        _$failedField = 'animeography';
        animeography.build();
        _$failedField = 'mangaography';
        mangaography.build();
        _$failedField = 'voiceActors';
        voiceActors.build();
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
