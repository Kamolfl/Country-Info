import 'package:flutter/material.dart';

class CheckBox extends StatelessWidget {
  const CheckBox({super.key, required this.isChecked, required this.onChanged});

  final bool isChecked;
  final ValueChanged<bool?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: const Color(0xFFBFFF07),
          checkColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          value: isChecked,
          onChanged: onChanged,
        ),
        const Text('Show number without verification', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
      ],
    );
  }
}
