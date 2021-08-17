// GENERATED CODE - DO NOT MODIFY BY HAND

part of season_archive;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SeasonArchive> _$seasonArchiveSerializer =
    new _$SeasonArchiveSerializer();

class _$SeasonArchiveSerializer implements StructuredSerializer<SeasonArchive> {
  @override
  final Iterable<Type> types = const [SeasonArchive, _$SeasonArchive];
  @override
  final String wireName = 'SeasonArchive';

  @override
  Iterable<Object?> serialize(Serializers serializers, SeasonArchive object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'year',
      serializers.serialize(object.year, specifiedType: const FullType(int)),
      'seasons',
      serializers.serialize(object.seasons,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  SeasonArchive deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SeasonArchiveBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'seasons':
          result.seasons.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$SeasonArchive extends SeasonArchive {
  @override
  final int year;
  @override
  final BuiltList<String> seasons;

  factory _$SeasonArchive([void Function(SeasonArchiveBuilder)? updates]) =>
      (new SeasonArchiveBuilder()..update(updates)).build();

  _$SeasonArchive._({required this.year, required this.seasons}) : super._() {
    BuiltValueNullFieldError.checkNotNull(year, 'SeasonArchive', 'year');
    BuiltValueNullFieldError.checkNotNull(seasons, 'SeasonArchive', 'seasons');
  }

  @override
  SeasonArchive rebuild(void Function(SeasonArchiveBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeasonArchiveBuilder toBuilder() => new SeasonArchiveBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeasonArchive &&
        year == other.year &&
        seasons == other.seasons;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, year.hashCode), seasons.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SeasonArchive')
          ..add('year', year)
          ..add('seasons', seasons))
        .toString();
  }
}

class SeasonArchiveBuilder
    implements Builder<SeasonArchive, SeasonArchiveBuilder> {
  _$SeasonArchive? _$v;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  ListBuilder<String>? _seasons;
  ListBuilder<String> get seasons =>
      _$this._seasons ??= new ListBuilder<String>();
  set seasons(ListBuilder<String>? seasons) => _$this._seasons = seasons;

  SeasonArchiveBuilder();

  SeasonArchiveBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _year = $v.year;
      _seasons = $v.seasons.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeasonArchive other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SeasonArchive;
  }

  @override
  void update(void Function(SeasonArchiveBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SeasonArchive build() {
    _$SeasonArchive _$result;
    try {
      _$result = _$v ??
          new _$SeasonArchive._(
              year: BuiltValueNullFieldError.checkNotNull(
                  year, 'SeasonArchive', 'year'),
              seasons: seasons.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'seasons';
        seasons.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SeasonArchive', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
