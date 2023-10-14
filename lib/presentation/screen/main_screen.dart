import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MainScreenArgs {
  final int? index;

  MainScreenArgs({required this.index});
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int _selectedIndex;
  late List<Widget> _pages;
  late PageController _pageController;

  void _onDestinationSelected(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  void initState() {
    super.initState();
    _pages = [
      // const HomeScreen(),
      // const StudyScreen(),
      // const TipsScreen(),
      // const MoreScreen(),
      const Center(child: Text('Home')),
      const Center(child: Text('Discover')),
      const Center(child: Text('Search')),
      const Center(child: Text('More')),
    ];
  }

  @override
  void didChangeDependencies() {
    final routeSettings = ModalRoute.of(context)?.settings;
    final args = routeSettings?.arguments as MainScreenArgs?;

    _selectedIndex = args?.index ?? 0;
    _pageController = PageController(initialPage: _selectedIndex);

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: _pages,
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Iconsax.home),
            selectedIcon: Icon(Iconsax.home_2),
            label: 'Discover',
          ),
          NavigationDestination(
            icon: Icon(Icons.abc),
            selectedIcon: Icon(Icons.add),
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(Iconsax.home),
            selectedIcon: Icon(Iconsax.home_2),
            label: 'More',
          ),
        ],
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onDestinationSelected,
        backgroundColor: Colors.white,
        indicatorColor: Colors.white,
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
