import 'package:flutter/material.dart';
import 'package:webalive/login.dart';
// ignore: unused_import
import 'login/login.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Início',
      style: optionStyle,
    ),
    Text(
      'Index 1: Busca',
      style: optionStyle,
    ),
    Text(
      'Index 2: Shop',
      style: optionStyle,
    ),
    Text(
      'Index 3: Perfil',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: const Text('Web Alive'),
          ),
          body: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
                backgroundColor: Colors.cyan,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined),
                label: 'Business',
                backgroundColor: Colors.lightBlue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_shopping_cart_outlined),
                label: 'Pedidos',
                backgroundColor: Colors.teal,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Perfil',
                backgroundColor: Colors.indigo,
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.indigo[900],
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
