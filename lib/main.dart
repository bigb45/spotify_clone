import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'Library.dart';
import 'MainPage.dart';
import 'SearchPage.dart';
import 'Premium.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: showPage(pageIndex),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.grey[900],
        ),
        child: BottomNavigationBar(
            currentIndex: pageIndex,
            showUnselectedLabels: true,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white38,
            onTap: (int x) {
              setState(() {
                pageIndex = x;
                showPage(pageIndex);
              });
            },
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.house), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.magnifyingGlass),
                  label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.book), label: "Library"),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.spotify), label: "Premium")
            ]),
      ),
    );
  }
}

Widget showPage(int pageIndex) {
  switch (pageIndex) {
    case 0:
      return MainPage();
    case 1:
      return SearchPage();
    case 2:
      return Library();
    case 3:
      return Premium();
  }
  return Placeholder();
}
