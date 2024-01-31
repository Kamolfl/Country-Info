import 'package:flutter/material.dart';
import 'package:united_states/ui/screen/home_screen/widgets/app_bar/appBar.dart';
import 'package:united_states/ui/screen/home_screen/widgets/country_info/country_info.dart';
import 'package:united_states/ui/screen/home_screen/widgets/smsMms_checkbox_container/smsMms_checkBox_Container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: AppBarWidget()),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SmsMmsCheckboxContainer(),
            CountryInfo(),
            CountryInfo(),
          ],
        ),
      ),
    );
  }
}
