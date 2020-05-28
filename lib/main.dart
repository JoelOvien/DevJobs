import 'package:DevJobs/screens/editProfile.dart';
import 'package:flutter/material.dart';
import 'screens/jobs.dart';
import 'screens/home.dart';
import 'screens/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DevJobs',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: EditProfile(),
      home: App(),
      routes: {
        '/homePage': (context) => HomePage(),
        '/jobsPage': (context) => JobPage(),
        '/profilePage': (context) => ProfilePage(),
        '/editProfile': (context) => EditProfile(),
      },
    );
  }
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedPage = 0;
  final _pageOptions = [
    HomePage(),
    JobPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        showUnselectedLabels: false,
        selectedFontSize: 12,
        selectedItemColor: Colors.indigo,
        onTap: (int index) {
          setState(() {
            _selectedPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home', style: TextStyle(fontSize: 14)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            title: Text('Jobs', style: TextStyle(fontSize: 14)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile', style: TextStyle(fontSize: 14)),
          ),
        ],
      ),
    );
  }
}
