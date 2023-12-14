// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entry_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EntryUpdate> _$entryUpdateSerializer = new _$EntryUpdateSerializer();

class _$EntryUpdateSerializer implements StructuredSerializer<EntryUpdate> {
  @override
  final Iterable<Type> types = const [EntryUpdate, _$EntryUpdate];
  @override
  final String wireName = 'EntryUpdate';

  @override
  Iterable<Object?> serialize(Serializers serializers, EntryUpdate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'entry',
      serializers.serialize(object.entry,
          specifiedType: const FullType(EntryMeta)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.score;
    if (value != null) {
      result
        ..add('score')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.episodesSeen;
    if (value != null) {
      result
        ..add('episodes_seen')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.episodesTotal;
    if (value != null) {
      result
        ..add('episodes_total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.volumesRead;
    if (value != null) {
      result
        ..add('volumes_read')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.volumesTotal;
    if (value != null) {
      result
        ..add('volumes_total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.chaptersRead;
    if (value != null) {
      result
        ..add('chapters_read')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.chaptersTotal;
    if (value != null) {
      result
        ..add('chapters_total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  EntryUpdate deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EntryUpdateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'entry':
          result.entry.replace(serializers.deserialize(value,
              specifiedType: const FullType(EntryMeta))! as EntryMeta);
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'episodes_seen':
          result.episodesSeen = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'episodes_total':
          result.episodesTotal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'volumes_read':
          result.volumesRead = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'volumes_total':
          result.volumesTotal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'chapters_read':
          result.chaptersRead = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'chapters_total':
          result.chaptersTotal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$EntryUpdate extends EntryUpdate {
  @override
  final EntryMeta entry;
  @override
  final int? score;
  @override
  final String status;
  @override
  final int? episodesSeen;
  @override
  final int? episodesTotal;
  @override
  final int? volumesRead;
  @override
  final int? volumesTotal;
  @override
  final int? chaptersRead;
  @override
  final int? chaptersTotal;
  @override
  final String date;

  factory _$EntryUpdate([void Function(EntryUpdateBuilder)? updates]) =>
      (new EntryUpdateBuilder()..update(updates))._build();

  _$EntryUpdate._(
      {required this.entry,
      this.score,
      required this.status,
      this.episodesSeen,
      this.episodesTotal,
      this.volumesRead,
      this.volumesTotal,
      this.chaptersRead,
      this.chaptersTotal,
      required this.date})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(entry, r'EntryUpdate', 'entry');
    BuiltValueNullFieldError.checkNotNull(status, r'EntryUpdate', 'status');
    BuiltValueNullFieldError.checkNotNull(date, r'EntryUpdate', 'date');
  }

  @override
  EntryUpdate rebuild(void Function(EntryUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntryUpdateBuilder toBuilder() => new EntryUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntryUpdate &&
        entry == other.entry &&
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
    var _$hash = 0;
    _$hash = $jc(_$hash, entry.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, episodesSeen.hashCode);
    _$hash = $jc(_$hash, episodesTotal.hashCode);
    _$hash = $jc(_$hash, volumesRead.hashCode);
    _$hash = $jc(_$hash, volumesTotal.hashCode);
    _$hash = $jc(_$hash, chaptersRead.hashCode);
    _$hash = $jc(_$hash, chaptersTotal.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntryUpdate')
          ..add('entry', entry)
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

class EntryUpdateBuilder implements Builder<EntryUpdate, EntryUpdateBuilder> {
  _$EntryUpdate? _$v;

  EntryMetaBuilder? _entry;
  EntryMetaBuilder get entry => _$this._entry ??= new EntryMetaBuilder();
  set entry(EntryMetaBuilder? entry) => _$this._entry = entry;

  int? _score;
  int? get score => _$this._score;
  set score(int? score) => _$this._score = score;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  int? _episodesSeen;
  int? get episodesSeen => _$this._episodesSeen;
  set episodesSeen(int? episodesSeen) => _$this._episodesSeen = episodesSeen;

  int? _episodesTotal;
  int? get episodesTotal => _$this._episodesTotal;
  set episodesTotal(int? episodesTotal) =>
      _$this._episodesTotal = episodesTotal;

  int? _volumesRead;
  int? get volumesRead => _$this._volumesRead;
  set volumesRead(int? volumesRead) => _$this._volumesRead = volumesRead;

  int? _volumesTotal;
  int? get volumesTotal => _$this._volumesTotal;
  set volumesTotal(int? volumesTotal) => _$this._volumesTotal = volumesTotal;

  int? _chaptersRead;
  int? get chaptersRead => _$this._chaptersRead;
  set chaptersRead(int? chaptersRead) => _$this._chaptersRead = chaptersRead;

  int? _chaptersTotal;
  int? get chaptersTotal => _$this._chaptersTotal;
  set chaptersTotal(int? chaptersTotal) =>
      _$this._chaptersTotal = chaptersTotal;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  EntryUpdateBuilder();

  EntryUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entry = $v.entry.toBuilder();
      _score = $v.score;
      _status = $v.status;
      _episodesSeen = $v.episodesSeen;
      _episodesTotal = $v.episodesTotal;
      _volumesRead = $v.volumesRead;
      _volumesTotal = $v.volumesTotal;
      _chaptersRead = $v.chaptersRead;
      _chaptersTotal = $v.chaptersTotal;
      _date = $v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntryUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EntryUpdate;
  }

  @override
  void update(void Function(EntryUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntryUpdate build() => _build();

  _$EntryUpdate _build() {
    _$EntryUpdate _$result;
    try {
      _$result = _$v ??
          new _$EntryUpdate._(
              entry: entry.build(),
              score: score,
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'EntryUpdate', 'status'),
              episodesSeen: episodesSeen,
              episodesTotal: episodesTotal,
              volumesRead: volumesRead,
              volumesTotal: volumesTotal,
              chaptersRead: chaptersRead,
              chaptersTotal: chaptersTotal,
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'EntryUpdate', 'date'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entry';
        entry.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EntryUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
