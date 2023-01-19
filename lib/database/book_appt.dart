import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _mainCollection = _firestore.collection('book_info');

class Database {
  static Future<void> addBooking({
    required String service,
    required String date,
    required String time,
  }) async {
    DocumentReference documentReferencer0 =
        _firestore.collection('book_info').doc();

    Map<String, dynamic> data = <String, dynamic>{
      "service": service,
      "date": date,
      "time": time,
    };

    // passing first document
    await documentReferencer0
        .set(data)
        .whenComplete(() => print("Booking successfully added to the database"))
        .catchError((e) => print(e));

    // passing second document

    // passing third document
  }
}
