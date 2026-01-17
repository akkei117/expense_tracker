import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool isExpense;

  const Details({
    super.key,
    required this.icon,
    required this.isExpense,
    required this.label,
  });

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final TextEditingController amount = TextEditingController();

  @override
  void dispose() {
    amount.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double width = constraints.maxWidth;

        final double titleSize = width * 0.075;
        final double sectionSize = width * 0.05;
        final double iconSize = width * 0.08;

        return Scaffold(
          backgroundColor: Colors.white,

          floatingActionButton: Padding(
            padding: const EdgeInsets.all(20.0),
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              splashColor: Colors.deepOrange,
              onTap: () {
                
              },
              
              child: Container(
                padding: EdgeInsets.all(width * 0.025),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(
                    color: const Color.fromRGBO(15, 15, 15, 1),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  Icons.add,
                  size: iconSize,
                  color: const Color.fromRGBO(15, 15, 15, 1),
                ),
              ),
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              "Details",
              style: GoogleFonts.inter(
                fontSize: titleSize,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(15, 15, 15, 1),
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.all(width * 0.04),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromRGBO(15, 15, 15, 1),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(width * 0.06),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(width * 0.025),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromRGBO(15, 15, 15, 1),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          widget.icon,
                          size: iconSize,
                          color: const Color.fromRGBO(15, 15, 15, 1),
                        ),
                      ),
                      SizedBox(width: width * 0.05),
                      Expanded(
                        child: Text(
                          widget.label,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.inter(
                            fontSize: titleSize,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: width * 0.15),

                  Row(
                    children: [
                      Text(
                        "Type",
                        style: GoogleFonts.inter(
                          fontSize: sectionSize,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 51, 51, 51),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        widget.isExpense ? "Expense" : "Income",
                        style: GoogleFonts.inter(
                          fontSize: sectionSize,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: width * 0.1),

                  Row(
                    children: [
                      Text(
                        "Amount",
                        style: GoogleFonts.inter(
                          fontSize: sectionSize,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 51, 51, 51),
                        ),
                      ),
                      SizedBox(width: width * 0.05),
                      Expanded(
                        child: TextField(
                          controller: amount,
                          keyboardType: const TextInputType.numberWithOptions(
                            decimal: true,
                          ),
                          style: GoogleFonts.inter(
                            fontSize: sectionSize,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            hintText: "Enter amount",
                            hintStyle: GoogleFonts.inter(
                              fontSize: sectionSize * 0.9,
                              color: Colors.grey,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: width * 0.04,
                              vertical: width * 0.035,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(15, 15, 15, 1),
                                width: 2,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Colors.orange,
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
