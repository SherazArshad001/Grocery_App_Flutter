import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/app_textfield.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SearchBarWidget(
              controller: searchController,
              onFilterPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
