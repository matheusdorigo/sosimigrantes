// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estados_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EstadosRecord> _$estadosRecordSerializer =
    new _$EstadosRecordSerializer();

class _$EstadosRecordSerializer implements StructuredSerializer<EstadosRecord> {
  @override
  final Iterable<Type> types = const [EstadosRecord, _$EstadosRecord];
  @override
  final String wireName = 'EstadosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EstadosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
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
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  EstadosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EstadosRecordBuilder();

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
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$EstadosRecord extends EstadosRecord {
  @override
  final int? id;
  @override
  final String? estado;
  @override
  final String? sigla;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EstadosRecord([void Function(EstadosRecordBuilder)? updates]) =>
      (new EstadosRecordBuilder()..update(updates))._build();

  _$EstadosRecord._({this.id, this.estado, this.sigla, this.ffRef}) : super._();

  @override
  EstadosRecord rebuild(void Function(EstadosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EstadosRecordBuilder toBuilder() => new EstadosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EstadosRecord &&
        id == other.id &&
        estado == other.estado &&
        sigla == other.sigla &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, estado.hashCode);
    _$hash = $jc(_$hash, sigla.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EstadosRecord')
          ..add('id', id)
          ..add('estado', estado)
          ..add('sigla', sigla)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EstadosRecordBuilder
    implements Builder<EstadosRecord, EstadosRecordBuilder> {
  _$EstadosRecord? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _estado;
  String? get estado => _$this._estado;
  set estado(String? estado) => _$this._estado = estado;

  String? _sigla;
  String? get sigla => _$this._sigla;
  set sigla(String? sigla) => _$this._sigla = sigla;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EstadosRecordBuilder() {
    EstadosRecord._initializeBuilder(this);
  }

  EstadosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _estado = $v.estado;
      _sigla = $v.sigla;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EstadosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EstadosRecord;
  }

  @override
  void update(void Function(EstadosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EstadosRecord build() => _build();

  _$EstadosRecord _build() {
    final _$result = _$v ??
        new _$EstadosRecord._(
            id: id, estado: estado, sigla: sigla, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
