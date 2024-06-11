import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RewardsRecord extends FirestoreRecord {
  RewardsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "item" field.
  String? _item;
  String get item => _item ?? '';
  bool hasItem() => _item != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "pointsSpended" field.
  int? _pointsSpended;
  int get pointsSpended => _pointsSpended ?? 0;
  bool hasPointsSpended() => _pointsSpended != null;

  void _initializeFields() {
    _owner = snapshotData['owner'] as DocumentReference?;
    _image = snapshotData['image'] as String?;
    _item = snapshotData['item'] as String?;
    _type = snapshotData['type'] as String?;
    _pointsSpended = castToType<int>(snapshotData['pointsSpended']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Rewards');

  static Stream<RewardsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RewardsRecord.fromSnapshot(s));

  static Future<RewardsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RewardsRecord.fromSnapshot(s));

  static RewardsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RewardsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RewardsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RewardsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RewardsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RewardsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRewardsRecordData({
  DocumentReference? owner,
  String? image,
  String? item,
  String? type,
  int? pointsSpended,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'owner': owner,
      'image': image,
      'item': item,
      'type': type,
      'pointsSpended': pointsSpended,
    }.withoutNulls,
  );

  return firestoreData;
}

class RewardsRecordDocumentEquality implements Equality<RewardsRecord> {
  const RewardsRecordDocumentEquality();

  @override
  bool equals(RewardsRecord? e1, RewardsRecord? e2) {
    return e1?.owner == e2?.owner &&
        e1?.image == e2?.image &&
        e1?.item == e2?.item &&
        e1?.type == e2?.type &&
        e1?.pointsSpended == e2?.pointsSpended;
  }

  @override
  int hash(RewardsRecord? e) => const ListEquality()
      .hash([e?.owner, e?.image, e?.item, e?.type, e?.pointsSpended]);

  @override
  bool isValidKey(Object? o) => o is RewardsRecord;
}
