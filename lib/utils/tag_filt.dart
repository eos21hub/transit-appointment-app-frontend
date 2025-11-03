import 'package:flutter/material.dart';

class TagFilt extends StatelessWidget {
  final IconData icon;
  const TagFilt({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: const Color.fromARGB(255, 209, 209, 209)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Icon(icon, color: Colors.grey.shade700),
      ),
    );
  }
}
