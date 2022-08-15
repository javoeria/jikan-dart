// GENERATED CODE - DO NOT MODIFY BY HAND

part of related;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Related> _$relatedSerializer = new _$RelatedSerializer();

class _$RelatedSerializer implements StructuredSerializer<Related> {
  @override
  final Iterable<Type> types = const [Related, _$Related];
  @override
  final String wireName = 'Related';

  @override
  Iterable<Object?> serialize(Serializers serializers, Related object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'relation',
      serializers.serialize(object.relation,
          specifiedType: const FullType(String)),
      'entry',
      serializers.serialize(object.entry,
          specifiedType:
              const FullType(BuiltList, const [const FullType(GenericInfo)])),
    ];

    return result;
  }

  @override
  Related deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RelatedBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'relation':
          result.relation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'entry':
          result.entry.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Related extends Related {
  @override
  final String relation;
  @override
  final BuiltList<GenericInfo> entry;

  factory _$Related([void Function(RelatedBuilder)? updates]) =>
      (new RelatedBuilder()..update(updates)).build();

  _$Related._({required this.relation, required this.entry}) : super._() {
    BuiltValueNullFieldError.checkNotNull(relation, 'Related', 'relation');
    BuiltValueNullFieldError.checkNotNull(entry, 'Related', 'entry');
  }

  @override
  Related rebuild(void Function(RelatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelatedBuilder toBuilder() => new RelatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Related &&
        relation == other.relation &&
        entry == other.entry;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, relation.hashCode), entry.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Related')
          ..add('relation', relation)
          ..add('entry', entry))
        .toString();
  }
}

class RelatedBuilder implements Builder<Related, RelatedBuilder> {
  _$Related? _$v;

  String? _relation;
  String? get relation => _$this._relation;
  set relation(String? relation) => _$this._relation = relation;

  ListBuilder<GenericInfo>? _entry;
  ListBuilder<GenericInfo> get entry =>
      _$this._entry ??= new ListBuilder<GenericInfo>();
  set entry(ListBuilder<GenericInfo>? entry) => _$this._entry = entry;

  RelatedBuilder();

  RelatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _relation = $v.relation;
      _entry = $v.entry.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Related other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Related;
  }

  @override
  void update(void Function(RelatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Related build() {
    _$Related _$result;
    try {
      _$result = _$v ??
          new _$Related._(
              relation: BuiltValueNullFieldError.checkNotNull(
                  relation, 'Related', 'relation'),
              entry: entry.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entry';
        entry.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Related', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
