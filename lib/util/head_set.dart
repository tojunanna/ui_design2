import 'package:flutter/material.dart';


class HeadsetType extends StatelessWidget {

  final String headsetType;
  final bool isSelected;
  final VoidCallback onTap;

  const HeadsetType({
    required this.headsetType,
  required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Text(
          headsetType,
      style: const TextStyle(fontSize: 18,
      fontWeight: FontWeight.bold,
        color: Colors.white

      ),
      ),
    );
  }
}
