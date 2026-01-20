import 'package:expense_tracker/models/infomodel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Infotile extends StatelessWidget {
  final Infomodel infomodel;
  final VoidCallback deletetile;
  Infotile({required this.infomodel, required this.deletetile,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromRGBO(15, 15, 15, 1), width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            // LEFT SIDE
            Expanded(
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromRGBO(15, 15, 15, 1),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      infomodel.icon,
                      size: 30,
                      color: const Color.fromRGBO(15, 15, 15, 1),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      infomodel.label,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // RIGHT SIDE
            Row(
              children: [
                Text(
                  "₹ ${infomodel.amount}",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 10),
                InkWell(
                  onTap: deletetile,
                  child: const Icon(
                    Icons.delete,
                    color: Colors.red,
                    size: 32,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
