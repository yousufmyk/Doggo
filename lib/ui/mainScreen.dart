
import 'package:doggo/shared/appConstents.dart';
import 'package:doggo/ui/breedListScreen.dart';
import 'package:doggo/ui/homeScreen.dart';
import 'package:doggo/ui/subBreedListScreen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PageController pageController = PageController(initialPage: 0);
  late int _selectedIndex = 0;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        controller: pageController,
        children: <Widget>[
          HomeScreen(),
          BreedListScreen(),
          SubBreedScreen(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            currentIndex: _selectedIndex,
            selectedItemColor: const Color(0xff73b1e0),
            unselectedItemColor: Colors.black,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
                pageController.jumpToPage(index);
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: const Icon(Icons.pets_rounded),
                label: mainScreenText1,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.list),
                label: mainScreenText2,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.list_alt),
                label: mainScreenText3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
