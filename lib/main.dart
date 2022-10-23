import 'package:ecommerce_app/pages/account.dart';
import 'package:ecommerce_app/pages/history.dart';
import 'package:ecommerce_app/pages/homescreen.dart';
import 'package:ecommerce_app/pages/wishlist.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'E-Commerce App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: MyHomePage(title: "E- Commerce UI"));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  onTap(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> screens = [
    const HomeScreen(),
    const WishlistPage(),
    const HistoryPage(),
    const AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Home.png",
                    color: selectedIndex == 0
                        ? Color(0xff67C4A7)
                        : Color(0xff939393)),
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Heart.png",
                    color: selectedIndex == 1
                        ? Color(0xff67C4A7)
                        : Color(0xff939393)),
              ),
              label: "Wishlist"),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8),
                child: Image.asset("assets/Paper.png",
                    color: selectedIndex == 2
                        ? Color(0xff67C4A7)
                        : Color(0xff939393)),
              ),
              label: "History"),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/Profile.png",
                  color: selectedIndex == 3
                      ? Color(0xff67C4A7)
                      : Color(0xff939393)),
            ),
            label: "Account",
          ),
        ],
        unselectedLabelStyle: TextStyle(fontSize: 10),
        selectedLabelStyle: TextStyle(fontSize: 10),
        selectedItemColor: Color(0xff67C4A7),
        unselectedItemColor: Color(0xff939393),
      ),
    );
  }
}
