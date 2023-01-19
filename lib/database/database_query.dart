import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _mainCollection = _firestore.collection('book_info');

class Database {
  static Future<void> addBooking({
    required String shopName,
    required String service,
    required String date,
    required String day,
    required String month,
    required String year,
    required String time,
    required String shopImage,
  }) async {
    DocumentReference documentReferencer0 =
        _firestore.collection('book_info').doc();

    Map<String, dynamic> data = <String, dynamic>{
      "shopName": shopName,
      "service": service,
      "date": date,
      "day": day,
      "month": month,
      "year": year,
      "time": time,
      "shopImage": shopImage,
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
