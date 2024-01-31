import 'package:flutter/material.dart';
import 'package:united_states/ui/screen/home_screen/widgets/country_info/country_info_widgets/country_info_container.dart';

class CountryInfo extends StatelessWidget {
  const CountryInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.35,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: 24,
                    height: 24,
                    child: Image.asset('assets/images/usa.png', fit: BoxFit.fill)),
                const Text('United States',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600))
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.28,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFF5F7FA),
            ),
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CountryInfoContainer(title: '+1 (201) 123 45 67', subtitle: 'New Jersey'),
                  CountryInfoContainer(title: '+1 (201) 123 45 67', subtitle: 'Washington'),
                  CountryInfoContainer(title: '+1 (201) 123 45 67', subtitle: 'New Jersey'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

