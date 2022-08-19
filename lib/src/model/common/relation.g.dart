// GENERATED CODE - DO NOT MODIFY BY HAND

part of relation;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Relation> _$relationSerializer = new _$RelationSerializer();

class _$RelationSerializer implements StructuredSerializer<Relation> {
  @override
  final Iterable<Type> types = const [Relation, _$Relation];
  @override
  final String wireName = 'Relation';

  @override
  Iterable<Object?> serialize(Serializers serializers, Relation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'relation',
      serializers.serialize(object.relation,
          specifiedType: const FullType(String)),
      'entry',
      serializers.serialize(object.entry,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Meta)])),
    ];

    return result;
  }

  @override
  Relation deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RelationBuilder();

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
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Meta)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Relation extends Relation {
  @override
  final String relation;
  @override
  final BuiltList<Meta> entry;

  factory _$Relation([void Function(RelationBuilder)? updates]) =>
      (new RelationBuilder()..update(updates)).build();

  _$Relation._({required this.relation, required this.entry}) : super._() {
    BuiltValueNullFieldError.checkNotNull(relation, 'Relation', 'relation');
    BuiltValueNullFieldError.checkNotNull(entry, 'Relation', 'entry');
  }

  @override
  Relation rebuild(void Function(RelationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelationBuilder toBuilder() => new RelationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Relation &&
        relation == other.relation &&
        entry == other.entry;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, relation.hashCode), entry.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Relation')
          ..add('relation', relation)
          ..add('entry', entry))
        .toString();
  }
}

class RelationBuilder implements Builder<Relation, RelationBuilder> {
  _$Relation? _$v;

  String? _relation;
  String? get relation => _$this._relation;
  set relation(String? relation) => _$this._relation = relation;

  ListBuilder<Meta>? _entry;
  ListBuilder<Meta> get entry => _$this._entry ??= new ListBuilder<Meta>();
  set entry(ListBuilder<Meta>? entry) => _$this._entry = entry;

  RelationBuilder();

  RelationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _relation = $v.relation;
      _entry = $v.entry.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Relation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Relation;
  }

  @override
  void update(void Function(RelationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Relation build() {
    _$Relation _$result;
    try {
      _$result = _$v ??
          new _$Relation._(
              relation: BuiltValueNullFieldError.checkNotNull(
                  relation, 'Relation', 'relation'),
              entry: entry.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entry';
        entry.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Relation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
