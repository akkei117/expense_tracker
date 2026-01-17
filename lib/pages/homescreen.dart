import 'package:expense_tracker/components/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons/lucide_icons.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
  double expense = 0;
  double income = 0;
  double balance = 0;

    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/categorysel');
          },
          highlightColor: Colors.deepOrange,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.orange,
              border: BoxBorder.all(
                color: .fromRGBO(15, 15, 15, 225),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                LucideIcons.plus,
                size: 40,
                color: Color.fromRGBO(17, 17, 17, 225),
              ),
            ),
          ),
        ),
      ),

      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Expense Tracker",
          style: GoogleFonts.inter(
            color: .fromRGBO(15, 15, 15, 225),
            fontSize: 30,
            fontWeight: .w500,
          ),
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsets.only(top: 20, bottom: 20, right: 10, left: 10),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  border: BoxBorder.all(
                    color: .fromRGBO(15, 15, 15, 225),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Dashboard(
                  balance: balance,
                  expense: expense,
                  income: income,
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: BoxBorder.all(
                    color: .fromRGBO(15, 15, 15, 225),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
