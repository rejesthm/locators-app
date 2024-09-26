import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContactlistRecord extends FirestoreRecord {
  ContactlistRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "contact_id" field.
  String? _contactId;
  String get contactId => _contactId ?? '';
  bool hasContactId() => _contactId != null;

  // "contact_name" field.
  String? _contactName;
  String get contactName => _contactName ?? '';
  bool hasContactName() => _contactName != null;

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  bool hasPosition() => _position != null;

  // "contact_address" field.
  String? _contactAddress;
  String get contactAddress => _contactAddress ?? '';
  bool hasContactAddress() => _contactAddress != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "mobile_number" field.
  String? _mobileNumber;
  String get mobileNumber => _mobileNumber ?? '';
  bool hasMobileNumber() => _mobileNumber != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "company" field.
  String? _company;
  String get company => _company ?? '';
  bool hasCompany() => _company != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _contactId = snapshotData['contact_id'] as String?;
    _contactName = snapshotData['contact_name'] as String?;
    _position = snapshotData['position'] as String?;
    _contactAddress = snapshotData['contact_address'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _mobileNumber = snapshotData['mobile_number'] as String?;
    _email = snapshotData['email'] as String?;
    _company = snapshotData['company'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('contactlist')
          : FirebaseFirestore.instance.collectionGroup('contactlist');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('contactlist').doc(id);

  static Stream<ContactlistRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContactlistRecord.fromSnapshot(s));

  static Future<ContactlistRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContactlistRecord.fromSnapshot(s));

  static ContactlistRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContactlistRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContactlistRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContactlistRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContactlistRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContactlistRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContactlistRecordData({
  String? contactId,
  String? contactName,
  String? position,
  String? contactAddress,
  String? phoneNumber,
  String? mobileNumber,
  String? email,
  String? company,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'contact_id': contactId,
      'contact_name': contactName,
      'position': position,
      'contact_address': contactAddress,
      'phone_number': phoneNumber,
      'mobile_number': mobileNumber,
      'email': email,
      'company': company,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContactlistRecordDocumentEquality implements Equality<ContactlistRecord> {
  const ContactlistRecordDocumentEquality();

  @override
  bool equals(ContactlistRecord? e1, ContactlistRecord? e2) {
    return e1?.contactId == e2?.contactId &&
        e1?.contactName == e2?.contactName &&
        e1?.position == e2?.position &&
        e1?.contactAddress == e2?.contactAddress &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.mobileNumber == e2?.mobileNumber &&
        e1?.email == e2?.email &&
        e1?.company == e2?.company;
  }

  @override
  int hash(ContactlistRecord? e) => const ListEquality().hash([
        e?.contactId,
        e?.contactName,
        e?.position,
        e?.contactAddress,
        e?.phoneNumber,
        e?.mobileNumber,
        e?.email,
        e?.company
      ]);

  @override
  bool isValidKey(Object? o) => o is ContactlistRecord;
}
