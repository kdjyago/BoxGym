import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StoreRecord extends FirestoreRecord {
  StoreRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "item" field.
  String? _item;
  String get item => _item ?? '';
  bool hasItem() => _item != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "pointPrice" field.
  int? _pointPrice;
  int get pointPrice => _pointPrice ?? 0;
  bool hasPointPrice() => _pointPrice != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  void _initializeFields() {
    _item = snapshotData['item'] as String?;
    _image = snapshotData['image'] as String?;
    _pointPrice = castToType<int>(snapshotData['pointPrice']);
    _type = snapshotData['type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Store');

  static Stream<StoreRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StoreRecord.fromSnapshot(s));

  static Future<StoreRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StoreRecord.fromSnapshot(s));

  static StoreRecord fromSnapshot(DocumentSnapshot snapshot) => StoreRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StoreRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StoreRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StoreRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StoreRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStoreRecordData({
  String? item,
  String? image,
  int? pointPrice,
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'item': item,
      'image': image,
      'pointPrice': pointPrice,
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class StoreRecordDocumentEquality implements Equality<StoreRecord> {
  const StoreRecordDocumentEquality();

  @override
  bool equals(StoreRecord? e1, StoreRecord? e2) {
    return e1?.item == e2?.item &&
        e1?.image == e2?.image &&
        e1?.pointPrice == e2?.pointPrice &&
        e1?.type == e2?.type;
  }

  @override
  int hash(StoreRecord? e) =>
      const ListEquality().hash([e?.item, e?.image, e?.pointPrice, e?.type]);

  @override
  bool isValidKey(Object? o) => o is StoreRecord;
}
