import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EstadosRecord extends FirestoreRecord {
  EstadosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "sigla" field.
  String? _sigla;
  String get sigla => _sigla ?? '';
  bool hasSigla() => _sigla != null;

  void _initializeFields() {
    _id = snapshotData['id'] as int?;
    _estado = snapshotData['estado'] as String?;
    _sigla = snapshotData['sigla'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('estados');

  static Stream<EstadosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EstadosRecord.fromSnapshot(s));

  static Future<EstadosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EstadosRecord.fromSnapshot(s));

  static EstadosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EstadosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EstadosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EstadosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EstadosRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createEstadosRecordData({
  int? id,
  String? estado,
  String? sigla,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'estado': estado,
      'sigla': sigla,
    }.withoutNulls,
  );

  return firestoreData;
}
