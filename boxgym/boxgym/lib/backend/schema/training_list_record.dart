import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class TrainingListRecord extends FirestoreRecord {
  TrainingListRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "training" field.
  List<String>? _training;
  List<String> get training => _training ?? const [];
  bool hasTraining() => _training != null;

  void _initializeFields() {
    _category = snapshotData['category'] as String?;
    _training = getDataList(snapshotData['training']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TrainingList');

  static Stream<TrainingListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TrainingListRecord.fromSnapshot(s));

  static Future<TrainingListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TrainingListRecord.fromSnapshot(s));

  static TrainingListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TrainingListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TrainingListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TrainingListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TrainingListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TrainingListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTrainingListRecordData({
  String? category,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'category': category,
    }.withoutNulls,
  );

  return firestoreData;
}

class TrainingListRecordDocumentEquality
    implements Equality<TrainingListRecord> {
  const TrainingListRecordDocumentEquality();

  @override
  bool equals(TrainingListRecord? e1, TrainingListRecord? e2) {
    const listEquality = ListEquality();
    return e1?.category == e2?.category &&
        listEquality.equals(e1?.training, e2?.training);
  }

  @override
  int hash(TrainingListRecord? e) =>
      const ListEquality().hash([e?.category, e?.training]);

  @override
  bool isValidKey(Object? o) => o is TrainingListRecord;
}
