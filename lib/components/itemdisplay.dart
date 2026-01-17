import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Itemdisplay extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isExpense;

  const Itemdisplay({
    super.key,
    required this.icon,
    required this.label,
    required this.isExpense,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double tileWidth = constraints.maxWidth;

        
        final double iconSize = tileWidth * 0.30;
        final double fontSize = tileWidth * 0.12;
        final double borderRadius = tileWidth * 0.1;

        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromRGBO(15, 15, 15, 1),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                icon,
                size: iconSize,
                color: Color.fromRGBO(15, 15, 15, 1),
              ),
              Text(
                label,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(15, 15, 15, 1),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
