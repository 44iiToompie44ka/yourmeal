import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:yourmeal/screens/home.dart';
import 'package:yourmeal/screens/SettingsScreen.dart';
import 'package:yourmeal/screens/random.dart';
import 'package:yourmeal/screens/SearchScreen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage(
      {super.key,
      required MaterialColor backgroundColor,
      required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late PersistentTabController _controller;
  late bool _hideNavBar;

  int _counter = 0;
  List<Widget> _buildScreens() => [
        Home(),
        SearchScreen(),
        RandomMealPage(),
        SettingsScreen(),
      ];
  List<PersistentBottomNavBarItem> _navBarsItems() => [
        PersistentBottomNavBarItem(
            icon: const Icon(Icons.home_rounded),
            title: "Home",
            activeColorPrimary: Colors.amber,
            inactiveColorPrimary: Colors.grey,
            inactiveColorSecondary: Colors.grey),
        PersistentBottomNavBarItem(
            icon: const Icon(Icons.search_rounded),
            title: "Search",
            activeColorPrimary: Colors.amber,
            inactiveColorPrimary: Colors.grey,
            inactiveColorSecondary: Colors.grey),
        PersistentBottomNavBarItem(
            icon: const Icon(Icons.question_mark_rounded),
            title: "Random Recipe",
            activeColorPrimary: Colors.amber,
            inactiveColorPrimary: Colors.grey,
            inactiveColorSecondary: Colors.grey),
        PersistentBottomNavBarItem(
            icon: const Icon(Icons.settings_rounded),
            title: "Settings",
            activeColorPrimary: Colors.amber,
            inactiveColorPrimary: Colors.grey,
            inactiveColorSecondary: Colors.grey),
      ];
  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController();
    _hideNavBar = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(38, 38, 38, 1),
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        resizeToAvoidBottomInset: true,
        navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
            ? 0.0
            : kBottomNavigationBarHeight,
        bottomScreenMargin: 0,

        backgroundColor: const Color.fromRGBO(38, 38, 38, 1),
        hideNavigationBar: _hideNavBar,
        decoration: const NavBarDecoration(colorBehindNavBar: Colors.indigo),
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 300),
          curve: Curves.elasticInOut,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
        ),
        navBarStyle:
            NavBarStyle.style12, // Choose the nav bar style with this property
      ),
    );
  }
}
