// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estados_b_r_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EstadosBRStruct> _$estadosBRStructSerializer =
    new _$EstadosBRStructSerializer();

class _$EstadosBRStructSerializer
    implements StructuredSerializer<EstadosBRStruct> {
  @override
  final Iterable<Type> types = const [EstadosBRStruct, _$EstadosBRStruct];
  @override
  final String wireName = 'EstadosBRStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, EstadosBRStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.estado;
    if (value != null) {
      result
        ..add('estado')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sigla;
    if (value != null) {
      result
        ..add('sigla')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  EstadosBRStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EstadosBRStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'estado':
          result.estado = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sigla':
          result.sigla = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$EstadosBRStruct extends EstadosBRStruct {
  @override
  final int? id;
  @override
  final String? estado;
  @override
  final String? sigla;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$EstadosBRStruct([void Function(EstadosBRStructBuilder)? updates]) =>
      (new EstadosBRStructBuilder()..update(updates))._build();

  _$EstadosBRStruct._(
      {this.id, this.estado, this.sigla, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'EstadosBRStruct', 'firestoreUtilData');
  }

  @override
  EstadosBRStruct rebuild(void Function(EstadosBRStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EstadosBRStructBuilder toBuilder() =>
      new EstadosBRStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EstadosBRStruct &&
        id == other.id &&
        estado == other.estado &&
        sigla == other.sigla &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, estado.hashCode);
    _$hash = $jc(_$hash, sigla.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EstadosBRStruct')
          ..add('id', id)
          ..add('estado', estado)
          ..add('sigla', sigla)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class EstadosBRStructBuilder
    implements Builder<EstadosBRStruct, EstadosBRStructBuilder> {
  _$EstadosBRStruct? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _estado;
  String? get estado => _$this._estado;
  set estado(String? estado) => _$this._estado = estado;

  String? _sigla;
  String? get sigla => _$this._sigla;
  set sigla(String? sigla) => _$this._sigla = sigla;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  EstadosBRStructBuilder() {
    EstadosBRStruct._initializeBuilder(this);
  }

  EstadosBRStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _estado = $v.estado;
      _sigla = $v.sigla;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EstadosBRStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EstadosBRStruct;
  }

  @override
  void update(void Function(EstadosBRStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EstadosBRStruct build() => _build();

  _$EstadosBRStruct _build() {
    final _$result = _$v ??
        new _$EstadosBRStruct._(
            id: id,
            estado: estado,
            sigla: sigla,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'EstadosBRStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
