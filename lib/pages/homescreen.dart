import 'package:expense_tracker/components/dashboard.dart';
import 'package:expense_tracker/components/infotile.dart';
import 'package:expense_tracker/models/infomodel.dart';
import 'package:expense_tracker/pages/categoryselection.dart';
// import 'package:expense_tracker/pages/details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons/lucide_icons.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Infomodel> infolist = [
    Infomodel(
      amount: "600",
      icon: Icons.other_houses,
      isExpense: true,
      label: "Welcome",
    ),
  ];

  void deleteinfo(int index) {
    setState(() {
      infolist.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    //dashboard items
    double expense = 0;
    double income = 0;
    double balance = 0;

    //list of items

    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
        child: InkWell(
          onTap: () async {
            final result = await Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => Categoryselection()),
            );

            if (result != null) {
              infolist.add(result);
              setState(() {});
            }
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

                child: ListView.builder(
                  itemCount: infolist.length,
                  itemBuilder: (BuildContext context, index) {
                    return Infotile(
                      infomodel: infolist[index],
                      deletetile: () => deleteinfo(index),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
