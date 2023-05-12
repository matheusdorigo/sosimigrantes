import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'estados_b_r_struct.g.dart';

abstract class EstadosBRStruct
    implements Built<EstadosBRStruct, EstadosBRStructBuilder> {
  static Serializer<EstadosBRStruct> get serializer =>
      _$estadosBRStructSerializer;

  int? get id;

  String? get estado;

  String? get sigla;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(EstadosBRStructBuilder builder) => builder
    ..id = 0
    ..estado = ''
    ..sigla = ''
    ..firestoreUtilData = FirestoreUtilData();

  EstadosBRStruct._();
  factory EstadosBRStruct([void Function(EstadosBRStructBuilder) updates]) =
      _$EstadosBRStruct;
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
      (e) => e
        ..id = id
        ..estado = estado
        ..sigla = sigla
        ..firestoreUtilData = FirestoreUtilData(
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
    estadosBR != null
        ? (estadosBR.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

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

  return;
}

Map<String, dynamic> getEstadosBRFirestoreData(
  EstadosBRStruct? estadosBR, [
  bool forFieldValue = false,
]) {
  if (estadosBR == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(EstadosBRStruct.serializer, estadosBR);

  // Add any Firestore field values
  estadosBR.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEstadosBRListFirestoreData(
  List<EstadosBRStruct>? estadosBRs,
) =>
    estadosBRs?.map((e) => getEstadosBRFirestoreData(e, true)).toList() ?? [];
