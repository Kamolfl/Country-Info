import 'package:flutter/material.dart';

class DropDown extends StatelessWidget {
  const DropDown({super.key, required this.selectedItem, required this.items, required this.onChanged});
  final String selectedItem;
  final List<String> items;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.height * 0.08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(selectedItem, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
          ),
          PopupMenuButton(
            icon: const Icon(Icons.keyboard_arrow_down, size: 35, color: Color(0xFF8693A3)),
            onSelected: onChanged,
            itemBuilder: (BuildContext context) {
              return items.map((String item) {
                return PopupMenuItem(
                  value: item,
                  child: Text(item),
                );
              }).toList();
            },
          ),
        ],
      ),
    );
  }
}
