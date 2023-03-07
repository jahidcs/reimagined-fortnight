import 'package:flutter/material.dart';
import 'package:reimaginated_fortnight_ui/music/constants/app_constants.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Text(
        'Library',
        style: TextStyle(color: AppConstants.primary),
      ),
    );
  }
}
