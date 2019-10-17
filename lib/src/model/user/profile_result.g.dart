// GENERATED CODE - DO NOT MODIFY BY HAND

part of profile_result;

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

Serializer<ProfileResult> _$profileResultSerializer =
    new _$ProfileResultSerializer();

class _$ProfileResultSerializer implements StructuredSerializer<ProfileResult> {
  @override
  final Iterable<Type> types = const [ProfileResult, _$ProfileResult];
  @override
  final String wireName = 'ProfileResult';

  @override
  Iterable serialize(Serializers serializers, ProfileResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'last_online',
      serializers.serialize(object.lastOnline,
          specifiedType: const FullType(String)),
      'joined',
      serializers.serialize(object.joined,
          specifiedType: const FullType(String)),
      'anime_stats',
      serializers.serialize(object.animeStats,
          specifiedType: const FullType(AnimeStats)),
      'manga_stats',
      serializers.serialize(object.mangaStats,
          specifiedType: const FullType(MangaStats)),
      'favorites',
      serializers.serialize(object.favorites,
          specifiedType: const FullType(Favorites)),
    ];
    if (object.imageUrl != null) {
      result
        ..add('image_url')
        ..add(serializers.serialize(object.imageUrl,
            specifiedType: const FullType(String)));
    }
    if (object.gender != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(object.gender,
            specifiedType: const FullType(String)));
    }
    if (object.birthday != null) {
      result
        ..add('birthday')
        ..add(serializers.serialize(object.birthday,
            specifiedType: const FullType(String)));
    }
    if (object.location != null) {
      result
        ..add('location')
        ..add(serializers.serialize(object.location,
            specifiedType: const FullType(String)));
    }
    if (object.about != null) {
      result
        ..add('about')
        ..add(serializers.serialize(object.about,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  ProfileResult deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProfileResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_online':
          result.lastOnline = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'birthday':
          result.birthday = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'joined':
          result.joined = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'anime_stats':
          result.animeStats.replace(serializers.deserialize(value,
              specifiedType: const FullType(AnimeStats)) as AnimeStats);
          break;
        case 'manga_stats':
          result.mangaStats.replace(serializers.deserialize(value,
              specifiedType: const FullType(MangaStats)) as MangaStats);
          break;
        case 'favorites':
          result.favorites.replace(serializers.deserialize(value,
              specifiedType: const FullType(Favorites)) as Favorites);
          break;
        case 'about':
          result.about = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ProfileResult extends ProfileResult {
  @override
  final String username;
  @override
  final String url;
  @override
  final String imageUrl;
  @override
  final String lastOnline;
  @override
  final String gender;
  @override
  final String birthday;
  @override
  final String location;
  @override
  final String joined;
  @override
  final AnimeStats animeStats;
  @override
  final MangaStats mangaStats;
  @override
  final Favorites favorites;
  @override
  final String about;

  factory _$ProfileResult([void updates(ProfileResultBuilder b)]) =>
      (new ProfileResultBuilder()..update(updates)).build();

  _$ProfileResult._(
      {this.username,
      this.url,
      this.imageUrl,
      this.lastOnline,
      this.gender,
      this.birthday,
      this.location,
      this.joined,
      this.animeStats,
      this.mangaStats,
      this.favorites,
      this.about})
      : super._() {
    if (username == null) {
      throw new BuiltValueNullFieldError('ProfileResult', 'username');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('ProfileResult', 'url');
    }
    if (lastOnline == null) {
      throw new BuiltValueNullFieldError('ProfileResult', 'lastOnline');
    }
    if (joined == null) {
      throw new BuiltValueNullFieldError('ProfileResult', 'joined');
    }
    if (animeStats == null) {
      throw new BuiltValueNullFieldError('ProfileResult', 'animeStats');
    }
    if (mangaStats == null) {
      throw new BuiltValueNullFieldError('ProfileResult', 'mangaStats');
    }
    if (favorites == null) {
      throw new BuiltValueNullFieldError('ProfileResult', 'favorites');
    }
  }

  @override
  ProfileResult rebuild(void updates(ProfileResultBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileResultBuilder toBuilder() => new ProfileResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProfileResult &&
        username == other.username &&
        url == other.url &&
        imageUrl == other.imageUrl &&
        lastOnline == other.lastOnline &&
        gender == other.gender &&
        birthday == other.birthday &&
        location == other.location &&
        joined == other.joined &&
        animeStats == other.animeStats &&
        mangaStats == other.mangaStats &&
        favorites == other.favorites &&
        about == other.about;
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
                                        $jc(
                                            $jc($jc(0, username.hashCode),
                                                url.hashCode),
                                            imageUrl.hashCode),
                                        lastOnline.hashCode),
                                    gender.hashCode),
                                birthday.hashCode),
                            location.hashCode),
                        joined.hashCode),
                    animeStats.hashCode),
                mangaStats.hashCode),
            favorites.hashCode),
        about.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProfileResult')
          ..add('username', username)
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('lastOnline', lastOnline)
          ..add('gender', gender)
          ..add('birthday', birthday)
          ..add('location', location)
          ..add('joined', joined)
          ..add('animeStats', animeStats)
          ..add('mangaStats', mangaStats)
          ..add('favorites', favorites)
          ..add('about', about))
        .toString();
  }
}

class ProfileResultBuilder
    implements Builder<ProfileResult, ProfileResultBuilder> {
  _$ProfileResult _$v;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  String _lastOnline;
  String get lastOnline => _$this._lastOnline;
  set lastOnline(String lastOnline) => _$this._lastOnline = lastOnline;

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

  String _birthday;
  String get birthday => _$this._birthday;
  set birthday(String birthday) => _$this._birthday = birthday;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  String _joined;
  String get joined => _$this._joined;
  set joined(String joined) => _$this._joined = joined;

  AnimeStatsBuilder _animeStats;
  AnimeStatsBuilder get animeStats =>
      _$this._animeStats ??= new AnimeStatsBuilder();
  set animeStats(AnimeStatsBuilder animeStats) =>
      _$this._animeStats = animeStats;

  MangaStatsBuilder _mangaStats;
  MangaStatsBuilder get mangaStats =>
      _$this._mangaStats ??= new MangaStatsBuilder();
  set mangaStats(MangaStatsBuilder mangaStats) =>
      _$this._mangaStats = mangaStats;

  FavoritesBuilder _favorites;
  FavoritesBuilder get favorites =>
      _$this._favorites ??= new FavoritesBuilder();
  set favorites(FavoritesBuilder favorites) => _$this._favorites = favorites;

  String _about;
  String get about => _$this._about;
  set about(String about) => _$this._about = about;

  ProfileResultBuilder();

  ProfileResultBuilder get _$this {
    if (_$v != null) {
      _username = _$v.username;
      _url = _$v.url;
      _imageUrl = _$v.imageUrl;
      _lastOnline = _$v.lastOnline;
      _gender = _$v.gender;
      _birthday = _$v.birthday;
      _location = _$v.location;
      _joined = _$v.joined;
      _animeStats = _$v.animeStats?.toBuilder();
      _mangaStats = _$v.mangaStats?.toBuilder();
      _favorites = _$v.favorites?.toBuilder();
      _about = _$v.about;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProfileResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProfileResult;
  }

  @override
  void update(void updates(ProfileResultBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ProfileResult build() {
    _$ProfileResult _$result;
    try {
      _$result = _$v ??
          new _$ProfileResult._(
              username: username,
              url: url,
              imageUrl: imageUrl,
              lastOnline: lastOnline,
              gender: gender,
              birthday: birthday,
              location: location,
              joined: joined,
              animeStats: animeStats.build(),
              mangaStats: mangaStats.build(),
              favorites: favorites.build(),
              about: about);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'animeStats';
        animeStats.build();
        _$failedField = 'mangaStats';
        mangaStats.build();
        _$failedField = 'favorites';
        favorites.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProfileResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
