import 'package:flutter/material.dart';
import 'package:reimaginated_fortnight_ui/music/constants/app_constants.dart';
import 'package:reimaginated_fortnight_ui/music/views/home_page.dart';
import 'package:reimaginated_fortnight_ui/music/views/library_page.dart';
import 'package:reimaginated_fortnight_ui/music/views/search_page.dart';
import 'package:reimaginated_fortnight_ui/music/views/settings_page.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: getFooter(),
      body: getBody(_selectedIndex),
    );
  }

  Widget getFooter() {
    List menus = [
      Icons.home_outlined,
      Icons.book_outlined,
      Icons.search_outlined,
      Icons.settings_outlined,
    ];
    return Container(
      height: 80,
      decoration: const BoxDecoration(color: AppConstants.black),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              menus.length,
              (index) {
                return IconButton(
                    onPressed: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                      print(_selectedIndex);
                    },
                    icon: Icon(
                      menus[index],
                      color: _selectedIndex == index
                          ? AppConstants.primary
                          : AppConstants.white,
                    ));
              },
            )),
      ),
    );
  }

  Widget getBody(int index) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const LibraryPage();
      case 2:
        return const SearchPage();
      case 3:
        return const SettingsPage();
      default:
        return const HomePage();
    }
  }
}
