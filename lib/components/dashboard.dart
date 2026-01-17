import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  double expense;
  double income;
  double balance;
  Dashboard({
    super.key,
    required this.balance,
    required this.expense,
    required this.income,
  });

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: .spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: .center,
            children: [
              Text(
                "Expense",
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: .w300,
                  color: .fromRGBO(15, 15, 15, 225),
                ),
              ),
              Text(
                "₹ ${widget.expense.toString()}",
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: .w500,
                  color: .fromRGBO(15, 15, 15, 225),
                ),
              ),
            ],
          ),

          Column(
            mainAxisAlignment: .center,
            children: [
              Text(
                "Income",
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: .w300,
                  color: .fromRGBO(15, 15, 15, 225),
                ),
              ),
              Text(
                "₹ ${widget.income.toString()}",
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: .w500,
                  color: .fromRGBO(15, 15, 15, 225),
                ),
              ),
            ],
          ),

          Column(
            mainAxisAlignment: .center,
            children: [
              Text(
                "Balance",
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: .w300,
                  color: .fromRGBO(15, 15, 15, 225),
                ),
              ),
              Text(
                "₹ ${widget.balance.toString()}",
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: .w500,
                  color: .fromRGBO(15, 15, 15, 225),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
