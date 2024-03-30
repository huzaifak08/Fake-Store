import 'package:fakes_store/exports/libraries.dart';
import 'package:fakes_store/screens/home_screen.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int _currentIndex = 0;

  List<Widget> screens = [
    const HomeScreen(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: BottomNavigationBar(
            selectedLabelStyle: const TextStyle(fontSize: 12),
            selectedIconTheme:
                const IconThemeData(color: AppColors.pendingColor),
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Iconsax.home),
                  label: 'Home',
                  backgroundColor: AppColors.primaryColor),
              BottomNavigationBarItem(
                  icon: Icon(Iconsax.shop),
                  label: 'Store',
                  backgroundColor: AppColors.primaryColor),
              BottomNavigationBarItem(
                  icon: Icon(Iconsax.heart),
                  label: 'Wishlist',
                  backgroundColor: AppColors.primaryColor),
              BottomNavigationBarItem(
                  icon: Icon(Iconsax.user),
                  label: 'Profile',
                  backgroundColor: AppColors.primaryColor),
            ],
          ),
        ),
      ),
      body: screens.elementAt(_currentIndex),
    );
  }
}
