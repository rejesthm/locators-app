import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SitesRecord extends FirestoreRecord {
  SitesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "siteReference" field.
  String? _siteReference;
  String get siteReference => _siteReference ?? '';
  bool hasSiteReference() => _siteReference != null;

  // "siteAddress" field.
  String? _siteAddress;
  String get siteAddress => _siteAddress ?? '';
  bool hasSiteAddress() => _siteAddress != null;

  // "sitePhoneNumber" field.
  String? _sitePhoneNumber;
  String get sitePhoneNumber => _sitePhoneNumber ?? '';
  bool hasSitePhoneNumber() => _sitePhoneNumber != null;

  // "siteEmail" field.
  String? _siteEmail;
  String get siteEmail => _siteEmail ?? '';
  bool hasSiteEmail() => _siteEmail != null;

  // "invoiceAddress" field.
  String? _invoiceAddress;
  String get invoiceAddress => _invoiceAddress ?? '';
  bool hasInvoiceAddress() => _invoiceAddress != null;

  // "invoicePhoneNumber" field.
  String? _invoicePhoneNumber;
  String get invoicePhoneNumber => _invoicePhoneNumber ?? '';
  bool hasInvoicePhoneNumber() => _invoicePhoneNumber != null;

  // "invoiceEmail" field.
  String? _invoiceEmail;
  String get invoiceEmail => _invoiceEmail ?? '';
  bool hasInvoiceEmail() => _invoiceEmail != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "companyNumber" field.
  String? _companyNumber;
  String get companyNumber => _companyNumber ?? '';
  bool hasCompanyNumber() => _companyNumber != null;

  // "vatNumber" field.
  String? _vatNumber;
  String get vatNumber => _vatNumber ?? '';
  bool hasVatNumber() => _vatNumber != null;

  // "siteTask" field.
  bool? _siteTask;
  bool get siteTask => _siteTask ?? false;
  bool hasSiteTask() => _siteTask != null;

  // "siteRating" field.
  int? _siteRating;
  int get siteRating => _siteRating ?? 0;
  bool hasSiteRating() => _siteRating != null;

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
  DateTime? _dateEditedTimestamp;
  DateTime? get dateEditedTimestamp => _dateEditedTimestamp;
  bool hasDateEditedTimestamp() => _dateEditedTimestamp != null;

  // "editedBy" field.
  DateTime? _editedBy;
  DateTime? get editedBy => _editedBy;
  bool hasEditedBy() => _editedBy != null;

  // "siteID" field.
  String? _siteID;
  String get siteID => _siteID ?? '';
  bool hasSiteID() => _siteID != null;

  void _initializeFields() {
    _siteReference = snapshotData['siteReference'] as String?;
    _siteAddress = snapshotData['siteAddress'] as String?;
    _sitePhoneNumber = snapshotData['sitePhoneNumber'] as String?;
    _siteEmail = snapshotData['siteEmail'] as String?;
    _invoiceAddress = snapshotData['invoiceAddress'] as String?;
    _invoicePhoneNumber = snapshotData['invoicePhoneNumber'] as String?;
    _invoiceEmail = snapshotData['invoiceEmail'] as String?;
    _website = snapshotData['website'] as String?;
    _companyNumber = snapshotData['companyNumber'] as String?;
    _vatNumber = snapshotData['vatNumber'] as String?;
    _siteTask = snapshotData['siteTask'] as bool?;
    _siteRating = castToType<int>(snapshotData['siteRating']);
    _deleted = snapshotData['deleted'] as bool?;
    _dateDeletedTimestamp = snapshotData['dateDeletedTimestamp'] as DateTime?;
    _deletedBy = snapshotData['deletedBy'] as String?;
    _dateCreatedTimestamp = snapshotData['dateCreatedTimestamp'] as DateTime?;
    _createdBy = snapshotData['createdBy'] as String?;
    _dateEditedTimestamp = snapshotData['dateEditedTimestamp'] as DateTime?;
    _editedBy = snapshotData['editedBy'] as DateTime?;
    _siteID = snapshotData['siteID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sites');

  static Stream<SitesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SitesRecord.fromSnapshot(s));

  static Future<SitesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SitesRecord.fromSnapshot(s));

  static SitesRecord fromSnapshot(DocumentSnapshot snapshot) => SitesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SitesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SitesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SitesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SitesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSitesRecordData({
  String? siteReference,
  String? siteAddress,
  String? sitePhoneNumber,
  String? siteEmail,
  String? invoiceAddress,
  String? invoicePhoneNumber,
  String? invoiceEmail,
  String? website,
  String? companyNumber,
  String? vatNumber,
  bool? siteTask,
  int? siteRating,
  bool? deleted,
  DateTime? dateDeletedTimestamp,
  String? deletedBy,
  DateTime? dateCreatedTimestamp,
  String? createdBy,
  DateTime? dateEditedTimestamp,
  DateTime? editedBy,
  String? siteID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'siteReference': siteReference,
      'siteAddress': siteAddress,
      'sitePhoneNumber': sitePhoneNumber,
      'siteEmail': siteEmail,
      'invoiceAddress': invoiceAddress,
      'invoicePhoneNumber': invoicePhoneNumber,
      'invoiceEmail': invoiceEmail,
      'website': website,
      'companyNumber': companyNumber,
      'vatNumber': vatNumber,
      'siteTask': siteTask,
      'siteRating': siteRating,
      'deleted': deleted,
      'dateDeletedTimestamp': dateDeletedTimestamp,
      'deletedBy': deletedBy,
      'dateCreatedTimestamp': dateCreatedTimestamp,
      'createdBy': createdBy,
      'dateEditedTimestamp': dateEditedTimestamp,
      'editedBy': editedBy,
      'siteID': siteID,
    }.withoutNulls,
  );

  return firestoreData;
}

class SitesRecordDocumentEquality implements Equality<SitesRecord> {
  const SitesRecordDocumentEquality();

  @override
  bool equals(SitesRecord? e1, SitesRecord? e2) {
    return e1?.siteReference == e2?.siteReference &&
        e1?.siteAddress == e2?.siteAddress &&
        e1?.sitePhoneNumber == e2?.sitePhoneNumber &&
        e1?.siteEmail == e2?.siteEmail &&
        e1?.invoiceAddress == e2?.invoiceAddress &&
        e1?.invoicePhoneNumber == e2?.invoicePhoneNumber &&
        e1?.invoiceEmail == e2?.invoiceEmail &&
        e1?.website == e2?.website &&
        e1?.companyNumber == e2?.companyNumber &&
        e1?.vatNumber == e2?.vatNumber &&
        e1?.siteTask == e2?.siteTask &&
        e1?.siteRating == e2?.siteRating &&
        e1?.deleted == e2?.deleted &&
        e1?.dateDeletedTimestamp == e2?.dateDeletedTimestamp &&
        e1?.deletedBy == e2?.deletedBy &&
        e1?.dateCreatedTimestamp == e2?.dateCreatedTimestamp &&
        e1?.createdBy == e2?.createdBy &&
        e1?.dateEditedTimestamp == e2?.dateEditedTimestamp &&
        e1?.editedBy == e2?.editedBy &&
        e1?.siteID == e2?.siteID;
  }

  @override
  int hash(SitesRecord? e) => const ListEquality().hash([
        e?.siteReference,
        e?.siteAddress,
        e?.sitePhoneNumber,
        e?.siteEmail,
        e?.invoiceAddress,
        e?.invoicePhoneNumber,
        e?.invoiceEmail,
        e?.website,
        e?.companyNumber,
        e?.vatNumber,
        e?.siteTask,
        e?.siteRating,
        e?.deleted,
        e?.dateDeletedTimestamp,
        e?.deletedBy,
        e?.dateCreatedTimestamp,
        e?.createdBy,
        e?.dateEditedTimestamp,
        e?.editedBy,
        e?.siteID
      ]);

  @override
  bool isValidKey(Object? o) => o is SitesRecord;
}
