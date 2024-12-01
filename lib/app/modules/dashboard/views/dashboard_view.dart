import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shojibkhan_testproject/app/modules/dashboard/views/aboutme_view.dart';

import '../../../routes/app_pages.dart';
import 'counter_view.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key, required this.title});

  final String title;
  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => Get.toNamed(Routes.STORY),
                  child: Card(
                    elevation: 5,
                    color: Colors.lightBlue[100],
                    child: const SizedBox(
                      height: 150,
                      width: 150,
                      child:
                          Image(image: AssetImage('assets/reading-book.png')),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: GestureDetector(
                  onTap: () => Get.toNamed(Routes.CODE),
                  child: Card(
                    elevation: 5,
                    color: Colors.lightBlue[100],
                    child: const SizedBox(
                      height: 150,
                      width: 150,
                      child: Image(image: AssetImage('assets/programming.png')),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Additional rows can be added here similarly
      ],
    ),
    const Column(
      children: [
        Expanded(
          child: CounterView(),
        ),
      ],
    ),
    const Column(
      children: [
        Expanded(
         child: AboutMeView(),
        ),
      ],
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Demo Name'),
            ),
            ListTile(
              title: const Text('Home'),
              selected: _selectedIndex == 0,
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Project'),
              selected: _selectedIndex == 1,
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('About Me'),
              selected: _selectedIndex == 2,
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: _onItemTapped,
        selectedIndex: _selectedIndex,
        destinations: const <NavigationDestination>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.business),
            label: 'Project',
          ),
          NavigationDestination(
            icon: Icon(Icons.school),
            label: 'About',
          ),
        ],
      ),
    );
  }
}
