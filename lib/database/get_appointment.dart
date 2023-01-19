import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetAppointment extends StatelessWidget {
  final String documentId;

  GetAppointment({required this.documentId});

  @override
  Widget build(BuildContext context) {
    CollectionReference wasteReport =
        FirebaseFirestore.instance.collection('book_info');

    return FutureBuilder<DocumentSnapshot>(
      future: wasteReport.doc(documentId).get(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      '${data['shopImage']}',
                      height: 100,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${data['day']}',
                            style: GoogleFonts.poppins(fontSize: 12),
                          ),
                          Text(' - '),
                          Text(
                            '${data['month']}',
                            style: GoogleFonts.poppins(fontSize: 12),
                          ),
                          Text(' - '),
                          Text(
                            '${data['year']}',
                            style: GoogleFonts.poppins(fontSize: 12),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Text(
                            '${data['time']}',
                            style: GoogleFonts.poppins(fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'lib/images/marker.png',
                            height: 15,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '${data['shopName']}',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 212, 136, 136),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            bottom: 5,
                            left: 10,
                            right: 10,
                          ),
                          child: Text(
                            '${data['service']}',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Color.fromARGB(255, 11, 8, 8),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          );
        }
        return Text('loading...');
      },
    );
  }
}
