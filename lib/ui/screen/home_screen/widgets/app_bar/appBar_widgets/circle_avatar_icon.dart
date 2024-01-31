import 'package:flutter/material.dart';

class CircleAvatarIcon extends StatelessWidget {
  const CircleAvatarIcon({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: CircleAvatar(
          radius: 20,
          backgroundColor: const Color(0xFFF5F7FA),
          child: IconButton(onPressed: () {}, icon: Icon(icon, color: const Color(0xFF29364E)))),
    );
  }
}
