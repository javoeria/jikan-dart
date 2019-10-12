// GENERATED CODE - DO NOT MODIFY BY HAND

part of character_staff;

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

Serializer<CharacterStaff> _$characterStaffSerializer =
    new _$CharacterStaffSerializer();

class _$CharacterStaffSerializer
    implements StructuredSerializer<CharacterStaff> {
  @override
  final Iterable<Type> types = const [CharacterStaff, _$CharacterStaff];
  @override
  final String wireName = 'CharacterStaff';

  @override
  Iterable serialize(Serializers serializers, CharacterStaff object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'characters',
      serializers.serialize(object.characters,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Character)])),
      'staff',
      serializers.serialize(object.staff,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Staff)])),
    ];

    return result;
  }

  @override
  CharacterStaff deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CharacterStaffBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'characters':
          result.characters.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Character)])) as BuiltList);
          break;
        case 'staff':
          result.staff.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Staff)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$CharacterStaff extends CharacterStaff {
  @override
  final BuiltList<Character> characters;
  @override
  final BuiltList<Staff> staff;

  factory _$CharacterStaff([void updates(CharacterStaffBuilder b)]) =>
      (new CharacterStaffBuilder()..update(updates)).build();

  _$CharacterStaff._({this.characters, this.staff}) : super._() {
    if (characters == null) {
      throw new BuiltValueNullFieldError('CharacterStaff', 'characters');
    }
    if (staff == null) {
      throw new BuiltValueNullFieldError('CharacterStaff', 'staff');
    }
  }

  @override
  CharacterStaff rebuild(void updates(CharacterStaffBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CharacterStaffBuilder toBuilder() =>
      new CharacterStaffBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CharacterStaff &&
        characters == other.characters &&
        staff == other.staff;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, characters.hashCode), staff.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CharacterStaff')
          ..add('characters', characters)
          ..add('staff', staff))
        .toString();
  }
}

class CharacterStaffBuilder
    implements Builder<CharacterStaff, CharacterStaffBuilder> {
  _$CharacterStaff _$v;

  ListBuilder<Character> _characters;
  ListBuilder<Character> get characters =>
      _$this._characters ??= new ListBuilder<Character>();
  set characters(ListBuilder<Character> characters) =>
      _$this._characters = characters;

  ListBuilder<Staff> _staff;
  ListBuilder<Staff> get staff => _$this._staff ??= new ListBuilder<Staff>();
  set staff(ListBuilder<Staff> staff) => _$this._staff = staff;

  CharacterStaffBuilder();

  CharacterStaffBuilder get _$this {
    if (_$v != null) {
      _characters = _$v.characters?.toBuilder();
      _staff = _$v.staff?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CharacterStaff other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CharacterStaff;
  }

  @override
  void update(void updates(CharacterStaffBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CharacterStaff build() {
    _$CharacterStaff _$result;
    try {
      _$result = _$v ??
          new _$CharacterStaff._(
              characters: characters.build(), staff: staff.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'characters';
        characters.build();
        _$failedField = 'staff';
        staff.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CharacterStaff', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
