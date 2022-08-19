// GENERATED CODE - DO NOT MODIFY BY HAND

part of archive;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Archive> _$archiveSerializer = new _$ArchiveSerializer();

class _$ArchiveSerializer implements StructuredSerializer<Archive> {
  @override
  final Iterable<Type> types = const [Archive, _$Archive];
  @override
  final String wireName = 'Archive';

  @override
  Iterable<Object?> serialize(Serializers serializers, Archive object,
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
  Archive deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArchiveBuilder();

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

class _$Archive extends Archive {
  @override
  final int year;
  @override
  final BuiltList<String> seasons;

  factory _$Archive([void Function(ArchiveBuilder)? updates]) =>
      (new ArchiveBuilder()..update(updates)).build();

  _$Archive._({required this.year, required this.seasons}) : super._() {
    BuiltValueNullFieldError.checkNotNull(year, 'Archive', 'year');
    BuiltValueNullFieldError.checkNotNull(seasons, 'Archive', 'seasons');
  }

  @override
  Archive rebuild(void Function(ArchiveBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArchiveBuilder toBuilder() => new ArchiveBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Archive && year == other.year && seasons == other.seasons;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, year.hashCode), seasons.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Archive')
          ..add('year', year)
          ..add('seasons', seasons))
        .toString();
  }
}

class ArchiveBuilder implements Builder<Archive, ArchiveBuilder> {
  _$Archive? _$v;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  ListBuilder<String>? _seasons;
  ListBuilder<String> get seasons =>
      _$this._seasons ??= new ListBuilder<String>();
  set seasons(ListBuilder<String>? seasons) => _$this._seasons = seasons;

  ArchiveBuilder();

  ArchiveBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _year = $v.year;
      _seasons = $v.seasons.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Archive other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Archive;
  }

  @override
  void update(void Function(ArchiveBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Archive build() {
    _$Archive _$result;
    try {
      _$result = _$v ??
          new _$Archive._(
              year: BuiltValueNullFieldError.checkNotNull(
                  year, 'Archive', 'year'),
              seasons: seasons.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'seasons';
        seasons.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Archive', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
