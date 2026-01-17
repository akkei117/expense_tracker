import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';


class ExpenseCategoryMetadata {
  final String label;
  final IconData icon;
  final bool isExpense;

  const ExpenseCategoryMetadata({required this.icon, required this.label , required this.isExpense});
}

List<ExpenseCategoryMetadata> expenseCategoryMeta= [
  ExpenseCategoryMetadata(
    icon: LucideIcons.film,
    label: "Entertainment",
    isExpense: true
  ),
  ExpenseCategoryMetadata(
    icon: LucideIcons.utensils,
    label: "Food",
    isExpense: true
  ),
  ExpenseCategoryMetadata(
    icon: LucideIcons.plane,
    label: "Travel",
    isExpense: true
  ),
  ExpenseCategoryMetadata(
    icon: LucideIcons.car,
    label: "Transportation",
    isExpense: true,
  ),
  ExpenseCategoryMetadata(
    icon: LucideIcons.box,
    label: "Goods",
    isExpense: true
  ),
  ExpenseCategoryMetadata(
    icon: LucideIcons.shoppingBag,
    label: "Shopping",
    isExpense: true
  ),
  ExpenseCategoryMetadata(
    icon: LucideIcons.heartPulse,
    label: "Health",
    isExpense: true
  ),
  ExpenseCategoryMetadata(
    icon: LucideIcons.moreHorizontal,
    label: "Others",
    isExpense: true
  ),
];
