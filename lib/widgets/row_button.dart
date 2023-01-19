import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopButton extends StatelessWidget {
  // ignore: non_constant_identifier_names

  // ignore: non_constant_identifier_names
  final String ButtonTitle;
  // ignore: non_constant_identifier_names
  final RowButtonAction;

  const TopButton(
      {Key? key,
      // ignore: non_constant_identifier_names

      // ignore: non_constant_identifier_names
      required this.ButtonTitle,
      // ignore: non_constant_identifier_names
      this.RowButtonAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: RowButtonAction,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
          bottom: 10,
        ),
        child: Column(
          children: [
            Container(
              height: 90,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 20,
                        bottom: 10,
                      ),
                      child: Text(
                        ButtonTitle,
                        style: GoogleFonts.poppins(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
