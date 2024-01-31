import 'package:flutter/material.dart';

class TitleAppBar extends StatefulWidget {
  const TitleAppBar({super.key});

  @override
  State<TitleAppBar> createState() => _TitleAppBarState();
}

class _TitleAppBarState extends State<TitleAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.12,
            height: MediaQuery.of(context).size.height * 0.06,
            color: const Color(0xFFF5F7FA),
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.sort)),
          ),
        ),
        const SizedBox(width: 5),
        const Text('+12021234567', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
      ],
    );
  }
}
