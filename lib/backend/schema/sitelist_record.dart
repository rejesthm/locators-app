import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SitelistRecord extends FirestoreRecord {
  SitelistRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "site_id" field.
  String? _siteId;
  String get siteId => _siteId ?? '';
  bool hasSiteId() => _siteId != null;

  // "site_reference" field.
  String? _siteReference;
  String get siteReference => _siteReference ?? '';
  bool hasSiteReference() => _siteReference != null;

  // "site_address" field.
  String? _siteAddress;
  String get siteAddress => _siteAddress ?? '';
  bool hasSiteAddress() => _siteAddress != null;

  // "site_invoice_address" field.
  String? _siteInvoiceAddress;
  String get siteInvoiceAddress => _siteInvoiceAddress ?? '';
  bool hasSiteInvoiceAddress() => _siteInvoiceAddress != null;

  // "site_phone" field.
  String? _sitePhone;
  String get sitePhone => _sitePhone ?? '';
  bool hasSitePhone() => _sitePhone != null;

  // "Site_invoice_phone" field.
  String? _siteInvoicePhone;
  String get siteInvoicePhone => _siteInvoicePhone ?? '';
  bool hasSiteInvoicePhone() => _siteInvoicePhone != null;

  // "site_email" field.
  String? _siteEmail;
  String get siteEmail => _siteEmail ?? '';
  bool hasSiteEmail() => _siteEmail != null;

  // "site_invoice_email" field.
  String? _siteInvoiceEmail;
  String get siteInvoiceEmail => _siteInvoiceEmail ?? '';
  bool hasSiteInvoiceEmail() => _siteInvoiceEmail != null;

  // "site_website" field.
  String? _siteWebsite;
  String get siteWebsite => _siteWebsite ?? '';
  bool hasSiteWebsite() => _siteWebsite != null;

  // "site_company_number" field.
  String? _siteCompanyNumber;
  String get siteCompanyNumber => _siteCompanyNumber ?? '';
  bool hasSiteCompanyNumber() => _siteCompanyNumber != null;

  // "site_VAT_number" field.
  String? _siteVATNumber;
  String get siteVATNumber => _siteVATNumber ?? '';
  bool hasSiteVATNumber() => _siteVATNumber != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _siteId = snapshotData['site_id'] as String?;
    _siteReference = snapshotData['site_reference'] as String?;
    _siteAddress = snapshotData['site_address'] as String?;
    _siteInvoiceAddress = snapshotData['site_invoice_address'] as String?;
    _sitePhone = snapshotData['site_phone'] as String?;
    _siteInvoicePhone = snapshotData['Site_invoice_phone'] as String?;
    _siteEmail = snapshotData['site_email'] as String?;
    _siteInvoiceEmail = snapshotData['site_invoice_email'] as String?;
    _siteWebsite = snapshotData['site_website'] as String?;
    _siteCompanyNumber = snapshotData['site_company_number'] as String?;
    _siteVATNumber = snapshotData['site_VAT_number'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('sitelist')
          : FirebaseFirestore.instance.collectionGroup('sitelist');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('sitelist').doc(id);

  static Stream<SitelistRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SitelistRecord.fromSnapshot(s));

  static Future<SitelistRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SitelistRecord.fromSnapshot(s));

  static SitelistRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SitelistRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SitelistRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SitelistRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SitelistRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SitelistRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSitelistRecordData({
  String? siteId,
  String? siteReference,
  String? siteAddress,
  String? siteInvoiceAddress,
  String? sitePhone,
  String? siteInvoicePhone,
  String? siteEmail,
  String? siteInvoiceEmail,
  String? siteWebsite,
  String? siteCompanyNumber,
  String? siteVATNumber,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'site_id': siteId,
      'site_reference': siteReference,
      'site_address': siteAddress,
      'site_invoice_address': siteInvoiceAddress,
      'site_phone': sitePhone,
      'Site_invoice_phone': siteInvoicePhone,
      'site_email': siteEmail,
      'site_invoice_email': siteInvoiceEmail,
      'site_website': siteWebsite,
      'site_company_number': siteCompanyNumber,
      'site_VAT_number': siteVATNumber,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class SitelistRecordDocumentEquality implements Equality<SitelistRecord> {
  const SitelistRecordDocumentEquality();

  @override
  bool equals(SitelistRecord? e1, SitelistRecord? e2) {
    return e1?.siteId == e2?.siteId &&
        e1?.siteReference == e2?.siteReference &&
        e1?.siteAddress == e2?.siteAddress &&
        e1?.siteInvoiceAddress == e2?.siteInvoiceAddress &&
        e1?.sitePhone == e2?.sitePhone &&
        e1?.siteInvoicePhone == e2?.siteInvoicePhone &&
        e1?.siteEmail == e2?.siteEmail &&
        e1?.siteInvoiceEmail == e2?.siteInvoiceEmail &&
        e1?.siteWebsite == e2?.siteWebsite &&
        e1?.siteCompanyNumber == e2?.siteCompanyNumber &&
        e1?.siteVATNumber == e2?.siteVATNumber &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(SitelistRecord? e) => const ListEquality().hash([
        e?.siteId,
        e?.siteReference,
        e?.siteAddress,
        e?.siteInvoiceAddress,
        e?.sitePhone,
        e?.siteInvoicePhone,
        e?.siteEmail,
        e?.siteInvoiceEmail,
        e?.siteWebsite,
        e?.siteCompanyNumber,
        e?.siteVATNumber,
        e?.createdTime
      ]);

  @override
  bool isValidKey(Object? o) => o is SitelistRecord;
}
