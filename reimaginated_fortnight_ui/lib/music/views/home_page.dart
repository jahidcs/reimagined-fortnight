import 'package:flutter/material.dart';
import 'package:reimaginated_fortnight_ui/data/songs_json.dart';
import 'package:reimaginated_fortnight_ui/music/constants/app_constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          getAppBar(),
          getBody(),
        ],
      ),
    );
  }

  Widget getAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('Explore',
                style: TextStyle(
                  fontSize: 20,
                  color: AppConstants.white,
                  fontWeight: FontWeight.bold,
                )),
            Icon(Icons.list),
          ],
        ),
      ),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Row(
                    children: List.generate(song_type_1.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 35),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = index;
                            });
                            print(_selectedIndex);
                          },
                          child: Column(
                            children: [
                              Text(
                                song_type_1[index],
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: AppConstants.grey,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
