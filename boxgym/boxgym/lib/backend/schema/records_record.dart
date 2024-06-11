import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class RecordsRecord extends FirestoreRecord {
  RecordsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _owner = snapshotData['owner'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Records');

  static Stream<RecordsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecordsRecord.fromSnapshot(s));

  static Future<RecordsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecordsRecord.fromSnapshot(s));

  static RecordsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecordsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecordsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecordsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecordsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecordsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecordsRecordData({
  String? name,
  DocumentReference? owner,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'owner': owner,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecordsRecordDocumentEquality implements Equality<RecordsRecord> {
  const RecordsRecordDocumentEquality();

  @override
  bool equals(RecordsRecord? e1, RecordsRecord? e2) {
    return e1?.name == e2?.name && e1?.owner == e2?.owner;
  }

  @override
  int hash(RecordsRecord? e) => const ListEquality().hash([e?.name, e?.owner]);

  @override
  bool isValidKey(Object? o) => o is RecordsRecord;
}
