import 'package:flutter/material.dart';
import 'package:reimaginated_fortnight_ui/music/constants/app_constants.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Text(
        'Search',
        style: TextStyle(color: AppConstants.primary),
      ),
    );
  }
}
