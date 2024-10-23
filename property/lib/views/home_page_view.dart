import 'package:flutter/material.dart';
import 'package:property/views/club_screen.dart';
import 'package:property/views/home_screen.dart';
import 'package:property/views/investments_screen.dart';
import 'package:property/views/settings_screen.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

PageController _pageController = PageController();
int _selectedItem = 0;

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_selectedItem == 0 ? 'Início' : _selectedItem == 1 ? 'Clube' : _selectedItem == 2 ? 'Investimentos' : 'Configurações'),
      ),
      body: PageView(
        controller: _pageController,
        children:const [
          HomeScreen(),
          ClubScreen(),
          InvestmentsScreen(),
          SettingsScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (page) {
          setState(() {
             _pageController.jumpToPage(page);
            _selectedItem = page;

          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedItem,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Clube',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_graph_outlined),
            label: 'Investimentos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Configurações',
          ),
        ],
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
