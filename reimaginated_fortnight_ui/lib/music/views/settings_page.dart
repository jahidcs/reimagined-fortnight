import 'package:flutter/material.dart';
import 'package:reimaginated_fortnight_ui/music/constants/app_constants.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Text(
        'Settings',
        style: TextStyle(color: AppConstants.primary),
      ),
    );
  }
}
