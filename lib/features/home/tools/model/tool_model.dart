import 'package:flutter/material.dart';

class ToolModel{
  final IconData icon;
  final String title;
  final String subtitle;
  final List<String> tips;

  const ToolModel({required this.title, required this.icon, required this.subtitle, required this.tips});
}