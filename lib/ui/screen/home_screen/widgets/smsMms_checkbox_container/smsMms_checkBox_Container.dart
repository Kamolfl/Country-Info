import 'package:flutter/material.dart';
import 'package:united_states/ui/screen/home_screen/widgets/smsMms_checkbox_container/smsMms_checkbox_container_widgets/drop_down.dart';
import 'package:united_states/ui/screen/home_screen/widgets/smsMms_checkbox_container/smsMms_checkbox_container_widgets/tap_container.dart';

import 'smsMms_checkbox_container_widgets/checkbox.dart';

class SmsMmsCheckboxContainer extends StatefulWidget {
  const SmsMmsCheckboxContainer({super.key});

  @override
  State<SmsMmsCheckboxContainer> createState() => _SmsMmsCheckboxContainerState();
}

class _SmsMmsCheckboxContainerState extends State<SmsMmsCheckboxContainer> {
  int _selectedTableIndex = 0;
  bool isChecked = false;
  List<String> items = ['Landline or Mobile', 'Item1', 'Item2', 'Item3'];
  String selectedItem = 'Landline or Mobile';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.26,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFF5F7FA),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TapContainer(label: 'SMS', isSelected: _selectedTableIndex == 0,
                      onTap: () {
                        setState(() {
                          _selectedTableIndex = 0;
                        });
                      }),
                  TapContainer(label: 'MMS', isSelected: _selectedTableIndex == 1,
                      onTap: () {
                        setState(() {
                          _selectedTableIndex = 1;
                        });
                      }),
                  TapContainer(label: 'VOICE', isSelected: _selectedTableIndex == 2,
                      onTap: () {
                        setState(() {
                          _selectedTableIndex = 2;
                        });
                      }),
                ],
              ),
            ),
            const SizedBox(height: 15),
            DropDown(selectedItem: selectedItem, items: items, onChanged: (value) {
              setState(() {
                selectedItem = value;
              });
            }),
            CheckBox(
              isChecked: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

