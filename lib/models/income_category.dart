import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class IncomeCategoryMetadata {
  final String label;
  final IconData icon;
  final bool isExpense;

  const IncomeCategoryMetadata({required this.icon, required this.label, required this.isExpense});

  
}

List<IncomeCategoryMetadata> incomeCategoryMeta= [
   IncomeCategoryMetadata(
    icon: LucideIcons.briefcase,
    label: "salary",
    isExpense: false
  ),
   IncomeCategoryMetadata(
    icon: LucideIcons.piggyBank,
    label: "Savings",
    isExpense: false
  ),
   IncomeCategoryMetadata(
    icon: LucideIcons.clock,
    label: "Part-Time",
    isExpense: false
  ),
  IncomeCategoryMetadata(
    icon: LucideIcons.trendingUp,
    label: "Investments",
    isExpense: false
  ),
  
];
