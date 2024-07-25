import 'package:flutter/material.dart';
import 'splashscreen.dart';
import 'package:portalwisata/pages/auth/login.dart';
import 'package:portalwisata/pages/home.dart';
import 'package:portalwisata/pages/wisata.dart';
import 'package:portalwisata/pages/profil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _showSplash = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        _showSplash = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _showSplash ? SplashScreenKu() : NavigationBar(),
      routes: {
        '/home': (context) => NavigationBar(),
        '/splash': (context) => SplashScreenKu(),
        '/profil': (context) => Profil(),
        '/wisata': (context) => Wisata(),
      },
    );
  }
}

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = <Widget>[
      Home(
        goPageEvent: () => setState(() => _selectedIndex = 1),
        goPageWisata: () => setState(() => _selectedIndex = 2),
      ),
      Wisata(),
      Profil(),
    ];

    List<GButton> _bottomNavBarItems = [
      GButton(
        icon: LineIcons.home,
        text: 'Beranda',
      ),
      GButton(
        icon: LineIcons.map,
        text: 'Wisata',
      ),
      GButton(
        icon: LineIcons.user,
        text: 'Profil',
      ),
    ];

    return Scaffold(
      body: IndexedStack(
        children: _widgetOptions,
        index: _selectedIndex,
      ),
      bottomNavigationBar: GNav(
        backgroundColor: Colors.white,
        color: Colors.grey,
        activeColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        onTabChange: _onItemTapped,
        tabBackgroundGradient: LinearGradient(
          colors: [Colors.blue.shade500, Colors.lightBlueAccent.shade100],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        gap: 8,
        tabMargin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        tabBorderRadius: 18,
        haptic: false,
        tabs: _bottomNavBarItems,
      ),
    );
  }
}
