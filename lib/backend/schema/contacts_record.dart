import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContactsRecord extends FirestoreRecord {
  ContactsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "contactName" field.
  String? _contactName;
  String get contactName => _contactName ?? '';
  bool hasContactName() => _contactName != null;

  // "contactCompany" field.
  String? _contactCompany;
  String get contactCompany => _contactCompany ?? '';
  bool hasContactCompany() => _contactCompany != null;

  // "contactPosition" field.
  String? _contactPosition;
  String get contactPosition => _contactPosition ?? '';
  bool hasContactPosition() => _contactPosition != null;

  // "contactAddress" field.
  String? _contactAddress;
  String get contactAddress => _contactAddress ?? '';
  bool hasContactAddress() => _contactAddress != null;

  // "contactPhone" field.
  String? _contactPhone;
  String get contactPhone => _contactPhone ?? '';
  bool hasContactPhone() => _contactPhone != null;

  // "contactMobile" field.
  String? _contactMobile;
  String get contactMobile => _contactMobile ?? '';
  bool hasContactMobile() => _contactMobile != null;

  // "contactEmail" field.
  String? _contactEmail;
  String get contactEmail => _contactEmail ?? '';
  bool hasContactEmail() => _contactEmail != null;

  // "contactTask" field.
  bool? _contactTask;
  bool get contactTask => _contactTask ?? false;
  bool hasContactTask() => _contactTask != null;

  // "contactRating" field.
  int? _contactRating;
  int get contactRating => _contactRating ?? 0;
  bool hasContactRating() => _contactRating != null;

  // "deleted" field.
  bool? _deleted;
  bool get deleted => _deleted ?? false;
  bool hasDeleted() => _deleted != null;

  // "dateDeletedTimestamp" field.
  DateTime? _dateDeletedTimestamp;
  DateTime? get dateDeletedTimestamp => _dateDeletedTimestamp;
  bool hasDateDeletedTimestamp() => _dateDeletedTimestamp != null;

  // "deletedBy" field.
  String? _deletedBy;
  String get deletedBy => _deletedBy ?? '';
  bool hasDeletedBy() => _deletedBy != null;

  // "dateCreatedTimestamp" field.
  DateTime? _dateCreatedTimestamp;
  DateTime? get dateCreatedTimestamp => _dateCreatedTimestamp;
  bool hasDateCreatedTimestamp() => _dateCreatedTimestamp != null;

  // "createdBy" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "dateEditedTimestamp" field.
  String? _dateEditedTimestamp;
  String get dateEditedTimestamp => _dateEditedTimestamp ?? '';
  bool hasDateEditedTimestamp() => _dateEditedTimestamp != null;

  // "contactID" field.
  String? _contactID;
  String get contactID => _contactID ?? '';
  bool hasContactID() => _contactID != null;

  void _initializeFields() {
    _contactName = snapshotData['contactName'] as String?;
    _contactCompany = snapshotData['contactCompany'] as String?;
    _contactPosition = snapshotData['contactPosition'] as String?;
    _contactAddress = snapshotData['contactAddress'] as String?;
    _contactPhone = snapshotData['contactPhone'] as String?;
    _contactMobile = snapshotData['contactMobile'] as String?;
    _contactEmail = snapshotData['contactEmail'] as String?;
    _contactTask = snapshotData['contactTask'] as bool?;
    _contactRating = castToType<int>(snapshotData['contactRating']);
    _deleted = snapshotData['deleted'] as bool?;
    _dateDeletedTimestamp = snapshotData['dateDeletedTimestamp'] as DateTime?;
    _deletedBy = snapshotData['deletedBy'] as String?;
    _dateCreatedTimestamp = snapshotData['dateCreatedTimestamp'] as DateTime?;
    _createdBy = snapshotData['createdBy'] as String?;
    _dateEditedTimestamp = snapshotData['dateEditedTimestamp'] as String?;
    _contactID = snapshotData['contactID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('contacts');

  static Stream<ContactsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContactsRecord.fromSnapshot(s));

  static Future<ContactsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContactsRecord.fromSnapshot(s));

  static ContactsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContactsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContactsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContactsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContactsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContactsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContactsRecordData({
  String? contactName,
  String? contactCompany,
  String? contactPosition,
  String? contactAddress,
  String? contactPhone,
  String? contactMobile,
  String? contactEmail,
  bool? contactTask,
  int? contactRating,
  bool? deleted,
  DateTime? dateDeletedTimestamp,
  String? deletedBy,
  DateTime? dateCreatedTimestamp,
  String? createdBy,
  String? dateEditedTimestamp,
  String? contactID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'contactName': contactName,
      'contactCompany': contactCompany,
      'contactPosition': contactPosition,
      'contactAddress': contactAddress,
      'contactPhone': contactPhone,
      'contactMobile': contactMobile,
      'contactEmail': contactEmail,
      'contactTask': contactTask,
      'contactRating': contactRating,
      'deleted': deleted,
      'dateDeletedTimestamp': dateDeletedTimestamp,
      'deletedBy': deletedBy,
      'dateCreatedTimestamp': dateCreatedTimestamp,
      'createdBy': createdBy,
      'dateEditedTimestamp': dateEditedTimestamp,
      'contactID': contactID,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContactsRecordDocumentEquality implements Equality<ContactsRecord> {
  const ContactsRecordDocumentEquality();

  @override
  bool equals(ContactsRecord? e1, ContactsRecord? e2) {
    return e1?.contactName == e2?.contactName &&
        e1?.contactCompany == e2?.contactCompany &&
        e1?.contactPosition == e2?.contactPosition &&
        e1?.contactAddress == e2?.contactAddress &&
        e1?.contactPhone == e2?.contactPhone &&
        e1?.contactMobile == e2?.contactMobile &&
        e1?.contactEmail == e2?.contactEmail &&
        e1?.contactTask == e2?.contactTask &&
        e1?.contactRating == e2?.contactRating &&
        e1?.deleted == e2?.deleted &&
        e1?.dateDeletedTimestamp == e2?.dateDeletedTimestamp &&
        e1?.deletedBy == e2?.deletedBy &&
        e1?.dateCreatedTimestamp == e2?.dateCreatedTimestamp &&
        e1?.createdBy == e2?.createdBy &&
        e1?.dateEditedTimestamp == e2?.dateEditedTimestamp &&
        e1?.contactID == e2?.contactID;
  }

  @override
  int hash(ContactsRecord? e) => const ListEquality().hash([
        e?.contactName,
        e?.contactCompany,
        e?.contactPosition,
        e?.contactAddress,
        e?.contactPhone,
        e?.contactMobile,
        e?.contactEmail,
        e?.contactTask,
        e?.contactRating,
        e?.deleted,
        e?.dateDeletedTimestamp,
        e?.deletedBy,
        e?.dateCreatedTimestamp,
        e?.createdBy,
        e?.dateEditedTimestamp,
        e?.contactID
      ]);

  @override
  bool isValidKey(Object? o) => o is ContactsRecord;
}
