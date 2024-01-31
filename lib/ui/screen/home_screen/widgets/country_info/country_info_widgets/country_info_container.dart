import 'package:flutter/material.dart';

class CountryInfoContainer extends StatefulWidget {
  const CountryInfoContainer({super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;

  @override
  State<CountryInfoContainer> createState() => _CountryInfoContainerState();
}

class _CountryInfoContainerState extends State<CountryInfoContainer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.11,
            height: MediaQuery.of(context).size.height * 0.055,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white),
            child: Image.asset('assets/images/Union.png'),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.title, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
              Text(widget.subtitle, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Color(0xFF8693A3)))
            ],
          ),
          const Spacer(),
          Row(
            children: [
              _buildCircleText(context, 'S'),
              const SizedBox(width: 8),
              _buildCircleText(context, 'V'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCircleText(BuildContext context, String letter) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.1,
      height: MediaQuery.of(context).size.height * 0.05,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
              width: 1, color: Color(0xFFD4D9E0)),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Center(
        child: Text(
          letter,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF29364E),
            fontSize: 11,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

}
