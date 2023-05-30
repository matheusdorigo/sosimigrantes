// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EstadosBRStruct extends FFFirebaseStruct {
  EstadosBRStruct({
    int? id,
    String? estado,
    String? sigla,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _estado = estado,
        _sigla = sigla,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  set estado(String? val) => _estado = val;
  bool hasEstado() => _estado != null;

  // "sigla" field.
  String? _sigla;
  String get sigla => _sigla ?? '';
  set sigla(String? val) => _sigla = val;
  bool hasSigla() => _sigla != null;

  static EstadosBRStruct fromMap(Map<String, dynamic> data) => EstadosBRStruct(
        id: data['id'] as int?,
        estado: data['estado'] as String?,
        sigla: data['sigla'] as String?,
      );

  static EstadosBRStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? EstadosBRStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'estado': _estado,
        'sigla': _sigla,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'estado': serializeParam(
          _estado,
          ParamType.String,
        ),
        'sigla': serializeParam(
          _sigla,
          ParamType.String,
        ),
      }.withoutNulls;

  static EstadosBRStruct fromSerializableMap(Map<String, dynamic> data) =>
      EstadosBRStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        estado: deserializeParam(
          data['estado'],
          ParamType.String,
          false,
        ),
        sigla: deserializeParam(
          data['sigla'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EstadosBRStruct(${toMap()})';
}

EstadosBRStruct createEstadosBRStruct({
  int? id,
  String? estado,
  String? sigla,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EstadosBRStruct(
      id: id,
      estado: estado,
      sigla: sigla,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EstadosBRStruct? updateEstadosBRStruct(
  EstadosBRStruct? estadosBR, {
  bool clearUnsetFields = true,
}) =>
    estadosBR
      ?..firestoreUtilData =
          FirestoreUtilData(clearUnsetFields: clearUnsetFields);

void addEstadosBRStructData(
  Map<String, dynamic> firestoreData,
  EstadosBRStruct? estadosBR,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (estadosBR == null) {
    return;
  }
  if (estadosBR.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && estadosBR.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final estadosBRData = getEstadosBRFirestoreData(estadosBR, forFieldValue);
  final nestedData = estadosBRData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = estadosBR.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEstadosBRFirestoreData(
  EstadosBRStruct? estadosBR, [
  bool forFieldValue = false,
]) {
  if (estadosBR == null) {
    return {};
  }
  final firestoreData = mapToFirestore(estadosBR.toMap());

  // Add any Firestore field values
  estadosBR.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEstadosBRListFirestoreData(
  List<EstadosBRStruct>? estadosBRs,
) =>
    estadosBRs?.map((e) => getEstadosBRFirestoreData(e, true)).toList() ?? [];
