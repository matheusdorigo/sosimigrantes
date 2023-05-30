import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SpRecord extends FirestoreRecord {
  SpRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "utilidade" field.
  String? _utilidade;
  String get utilidade => _utilidade ?? '';
  bool hasUtilidade() => _utilidade != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  bool hasTelefone() => _telefone != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  void _initializeFields() {
    _utilidade = snapshotData['utilidade'] as String?;
    _telefone = snapshotData['telefone'] as String?;
    _tipo = snapshotData['tipo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SP');

  static Stream<SpRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SpRecord.fromSnapshot(s));

  static Future<SpRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SpRecord.fromSnapshot(s));

  static SpRecord fromSnapshot(DocumentSnapshot snapshot) => SpRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SpRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SpRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SpRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createSpRecordData({
  String? utilidade,
  String? telefone,
  String? tipo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'utilidade': utilidade,
      'telefone': telefone,
      'tipo': tipo,
    }.withoutNulls,
  );

  return firestoreData;
}
