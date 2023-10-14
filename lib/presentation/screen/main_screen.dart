import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:reachout/presentation/screen/chat/chat_screen.dart';
import 'package:reachout/presentation/screen/consultation/consultation_screen.dart';
import 'package:reachout/presentation/screen/home/home_screen.dart';
import 'package:reachout/presentation/screen/more/more_screen.dart';

class MainScreenArgs {
  final int? index;
  final bool? shouldAutoFocus;

  MainScreenArgs({
    required this.index,
    this.shouldAutoFocus,
  });
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
      const HomeScreen(),
      const ConsultationScreen(),
      const ChatScreen(),
      const MoreScreen(),
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
            icon: Icon(Iconsax.home),
            selectedIcon: Icon(Iconsax.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Iconsax.document),
            selectedIcon: Icon(Iconsax.document),
            label: 'Services',
          ),
          NavigationDestination(
            icon: Icon(Iconsax.chart),
            selectedIcon: Icon(Iconsax.chart),
            label: 'Chat',
          ),
          NavigationDestination(
            icon: Icon(Iconsax.user),
            selectedIcon: Icon(Iconsax.user),
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
