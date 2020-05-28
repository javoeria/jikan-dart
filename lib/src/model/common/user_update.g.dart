// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_update;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserUpdate> _$userUpdateSerializer = new _$UserUpdateSerializer();

class _$UserUpdateSerializer implements StructuredSerializer<UserUpdate> {
  @override
  final Iterable<Type> types = const [UserUpdate, _$UserUpdate];
  @override
  final String wireName = 'UserUpdate';

  @override
  Iterable<Object> serialize(Serializers serializers, UserUpdate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'image_url',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
    ];
    if (object.score != null) {
      result
        ..add('score')
        ..add(serializers.serialize(object.score,
            specifiedType: const FullType(int)));
    }
    if (object.episodesSeen != null) {
      result
        ..add('episodes_seen')
        ..add(serializers.serialize(object.episodesSeen,
            specifiedType: const FullType(int)));
    }
    if (object.episodesTotal != null) {
      result
        ..add('episodes_total')
        ..add(serializers.serialize(object.episodesTotal,
            specifiedType: const FullType(int)));
    }
    if (object.volumesRead != null) {
      result
        ..add('volumes_read')
        ..add(serializers.serialize(object.volumesRead,
            specifiedType: const FullType(int)));
    }
    if (object.volumesTotal != null) {
      result
        ..add('volumes_total')
        ..add(serializers.serialize(object.volumesTotal,
            specifiedType: const FullType(int)));
    }
    if (object.chaptersRead != null) {
      result
        ..add('chapters_read')
        ..add(serializers.serialize(object.chaptersRead,
            specifiedType: const FullType(int)));
    }
    if (object.chaptersTotal != null) {
      result
        ..add('chapters_total')
        ..add(serializers.serialize(object.chaptersTotal,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  UserUpdate deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserUpdateBuilder();

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
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'episodes_seen':
          result.episodesSeen = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'episodes_total':
          result.episodesTotal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'volumes_read':
          result.volumesRead = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'volumes_total':
          result.volumesTotal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'chapters_read':
          result.chaptersRead = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'chapters_total':
          result.chaptersTotal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UserUpdate extends UserUpdate {
  @override
  final String username;
  @override
  final String url;
  @override
  final String imageUrl;
  @override
  final int score;
  @override
  final String status;
  @override
  final int episodesSeen;
  @override
  final int episodesTotal;
  @override
  final int volumesRead;
  @override
  final int volumesTotal;
  @override
  final int chaptersRead;
  @override
  final int chaptersTotal;
  @override
  final String date;

  factory _$UserUpdate([void Function(UserUpdateBuilder) updates]) =>
      (new UserUpdateBuilder()..update(updates)).build();

  _$UserUpdate._(
      {this.username,
      this.url,
      this.imageUrl,
      this.score,
      this.status,
      this.episodesSeen,
      this.episodesTotal,
      this.volumesRead,
      this.volumesTotal,
      this.chaptersRead,
      this.chaptersTotal,
      this.date})
      : super._() {
    if (username == null) {
      throw new BuiltValueNullFieldError('UserUpdate', 'username');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('UserUpdate', 'url');
    }
    if (imageUrl == null) {
      throw new BuiltValueNullFieldError('UserUpdate', 'imageUrl');
    }
    if (status == null) {
      throw new BuiltValueNullFieldError('UserUpdate', 'status');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('UserUpdate', 'date');
    }
  }

  @override
  UserUpdate rebuild(void Function(UserUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserUpdateBuilder toBuilder() => new UserUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserUpdate &&
        username == other.username &&
        url == other.url &&
        imageUrl == other.imageUrl &&
        score == other.score &&
        status == other.status &&
        episodesSeen == other.episodesSeen &&
        episodesTotal == other.episodesTotal &&
        volumesRead == other.volumesRead &&
        volumesTotal == other.volumesTotal &&
        chaptersRead == other.chaptersRead &&
        chaptersTotal == other.chaptersTotal &&
        date == other.date;
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
                                        score.hashCode),
                                    status.hashCode),
                                episodesSeen.hashCode),
                            episodesTotal.hashCode),
                        volumesRead.hashCode),
                    volumesTotal.hashCode),
                chaptersRead.hashCode),
            chaptersTotal.hashCode),
        date.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserUpdate')
          ..add('username', username)
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('score', score)
          ..add('status', status)
          ..add('episodesSeen', episodesSeen)
          ..add('episodesTotal', episodesTotal)
          ..add('volumesRead', volumesRead)
          ..add('volumesTotal', volumesTotal)
          ..add('chaptersRead', chaptersRead)
          ..add('chaptersTotal', chaptersTotal)
          ..add('date', date))
        .toString();
  }
}

class UserUpdateBuilder implements Builder<UserUpdate, UserUpdateBuilder> {
  _$UserUpdate _$v;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  int _score;
  int get score => _$this._score;
  set score(int score) => _$this._score = score;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  int _episodesSeen;
  int get episodesSeen => _$this._episodesSeen;
  set episodesSeen(int episodesSeen) => _$this._episodesSeen = episodesSeen;

  int _episodesTotal;
  int get episodesTotal => _$this._episodesTotal;
  set episodesTotal(int episodesTotal) => _$this._episodesTotal = episodesTotal;

  int _volumesRead;
  int get volumesRead => _$this._volumesRead;
  set volumesRead(int volumesRead) => _$this._volumesRead = volumesRead;

  int _volumesTotal;
  int get volumesTotal => _$this._volumesTotal;
  set volumesTotal(int volumesTotal) => _$this._volumesTotal = volumesTotal;

  int _chaptersRead;
  int get chaptersRead => _$this._chaptersRead;
  set chaptersRead(int chaptersRead) => _$this._chaptersRead = chaptersRead;

  int _chaptersTotal;
  int get chaptersTotal => _$this._chaptersTotal;
  set chaptersTotal(int chaptersTotal) => _$this._chaptersTotal = chaptersTotal;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  UserUpdateBuilder();

  UserUpdateBuilder get _$this {
    if (_$v != null) {
      _username = _$v.username;
      _url = _$v.url;
      _imageUrl = _$v.imageUrl;
      _score = _$v.score;
      _status = _$v.status;
      _episodesSeen = _$v.episodesSeen;
      _episodesTotal = _$v.episodesTotal;
      _volumesRead = _$v.volumesRead;
      _volumesTotal = _$v.volumesTotal;
      _chaptersRead = _$v.chaptersRead;
      _chaptersTotal = _$v.chaptersTotal;
      _date = _$v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserUpdate other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserUpdate;
  }

  @override
  void update(void Function(UserUpdateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserUpdate build() {
    final _$result = _$v ??
        new _$UserUpdate._(
            username: username,
            url: url,
            imageUrl: imageUrl,
            score: score,
            status: status,
            episodesSeen: episodesSeen,
            episodesTotal: episodesTotal,
            volumesRead: volumesRead,
            volumesTotal: volumesTotal,
            chaptersRead: chaptersRead,
            chaptersTotal: chaptersTotal,
            date: date);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
