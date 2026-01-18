import 'package:expense_tracker/components/itemdisplay.dart';
import 'package:expense_tracker/models/expense_category.dart';
import 'package:expense_tracker/models/income_category.dart';
import 'package:expense_tracker/pages/details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categoryselection extends StatefulWidget {
  const Categoryselection({super.key});

  @override
  State<Categoryselection> createState() => _CategoryselectionState();
}

class _CategoryselectionState extends State<Categoryselection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Add",
          style: GoogleFonts.inter(
            color: Color.fromRGBO(15, 15, 15, 1),
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Color.fromRGBO(15, 15, 15, 1), width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(
                      color: Color.fromRGBO(15, 15, 15, 1),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "Expense",
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),

              GridView.builder(
                itemCount: expenseCategoryMeta.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(8),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  final category = expenseCategoryMeta[index];
                  return InkWell(
                    onTap: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Details(
                            icon: category.icon,
                            isExpense: category.isExpense,
                            label: category.label,
                          ),
                        ),
                      );

                      if (result != null) {
                        Navigator.pop(context, result);
                      }
                    },
                    borderRadius: BorderRadius.circular(20),
                    focusColor: Colors.orange,
                    highlightColor: Colors.orange,
                    splashColor: Colors.orange,
                    child: Itemdisplay(
                      icon: category.icon,
                      label: category.label,
                      isExpense: category.isExpense,
                    ),
                  );
                },
              ),

              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(
                      color: Color.fromRGBO(15, 15, 15, 1),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "Income",
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),

              GridView.builder(
                itemCount: incomeCategoryMeta.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(8),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  final category = incomeCategoryMeta[index];
                  return InkWell(
                    onTap: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Details(
                            icon: category.icon,
                            isExpense: category.isExpense,
                            label: category.label,
                          ),
                        ),
                      );

                      if (result != null) {
                        // ignore: use_build_context_synchronously
                        Navigator.pop(context, result); // send back to Home
                      }
                    },
                    borderRadius: BorderRadius.circular(20),
                    focusColor: Colors.orange,
                    highlightColor: Colors.orange,
                    splashColor: Colors.orange,

                    child: Itemdisplay(
                      icon: category.icon,
                      label: category.label,
                      isExpense: category.isExpense,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
