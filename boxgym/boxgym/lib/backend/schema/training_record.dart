import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrainingRecord extends FirestoreRecord {
  TrainingRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "technicalName" field.
  String? _technicalName;
  String get technicalName => _technicalName ?? '';
  bool hasTechnicalName() => _technicalName != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "startTimer" field.
  int? _startTimer;
  int get startTimer => _startTimer ?? 0;
  bool hasStartTimer() => _startTimer != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _category = snapshotData['category'] as String?;
    _technicalName = snapshotData['technicalName'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _owner = snapshotData['owner'] as DocumentReference?;
    _startTimer = castToType<int>(snapshotData['startTimer']);
    _image = snapshotData['image'] as String?;
    _video = snapshotData['video'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Training');

  static Stream<TrainingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TrainingRecord.fromSnapshot(s));

  static Future<TrainingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TrainingRecord.fromSnapshot(s));

  static TrainingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TrainingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TrainingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TrainingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TrainingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TrainingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTrainingRecordData({
  String? name,
  String? category,
  String? technicalName,
  String? descripcion,
  DocumentReference? owner,
  int? startTimer,
  String? image,
  String? video,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'category': category,
      'technicalName': technicalName,
      'descripcion': descripcion,
      'owner': owner,
      'startTimer': startTimer,
      'image': image,
      'video': video,
    }.withoutNulls,
  );

  return firestoreData;
}

class TrainingRecordDocumentEquality implements Equality<TrainingRecord> {
  const TrainingRecordDocumentEquality();

  @override
  bool equals(TrainingRecord? e1, TrainingRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.category == e2?.category &&
        e1?.technicalName == e2?.technicalName &&
        e1?.descripcion == e2?.descripcion &&
        e1?.owner == e2?.owner &&
        e1?.startTimer == e2?.startTimer &&
        e1?.image == e2?.image &&
        e1?.video == e2?.video;
  }

  @override
  int hash(TrainingRecord? e) => const ListEquality().hash([
        e?.name,
        e?.category,
        e?.technicalName,
        e?.descripcion,
        e?.owner,
        e?.startTimer,
        e?.image,
        e?.video
      ]);

  @override
  bool isValidKey(Object? o) => o is TrainingRecord;
}
