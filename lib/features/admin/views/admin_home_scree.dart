import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_online/features/admin/views/drawer.dart';
import 'package:shopping_online/features/admin/views/widgets/admin_dashboard_screen.dart';
import 'package:shopping_online/features/admin/views/widgets/menu_management_screen.dart';
import 'package:shopping_online/features/admin/views/order_management_screen.dart';
import 'package:shopping_online/features/admin/views/global_search_screen.dart';

class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({Key? key}) : super(key: key);

  @override
  _AdminHomeScreenState createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _adminScreens = [
    AdminDashboardScreen(),
    GlobalSearchScreen(),
    MenuManagementScreen(),
    OrderManagementScreen(),
    // SalesReportScreen(),
    // CustomerManagementScreen(),
    // NotificationCenterScreen(),
    // SystemAnalyticsScreen(),
    // UserManagementScreen(),
    // SettingsScreen(),
    // HelpFaqScreen(),
    // AdminProfileScreen(),
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
        title: Text(
          'Admin Dashboard',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFFFF6B35),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      drawer: DrawerWidget(),
      body: _adminScreens[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_outlined),
              activeIcon: Icon(Icons.dashboard),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              activeIcon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.restaurant_menu_outlined),
              activeIcon: Icon(Icons.restaurant_menu),
              label: 'Menu',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.bar_chart_outlined),
            //   activeIcon: Icon(Icons.bar_chart),
            //   label: 'Reports',
            // ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.people_outline),
            //   activeIcon: Icon(Icons.people),
            //   label: 'Customers',
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long_outlined),
              activeIcon: Icon(Icons.receipt_long),
              label: 'Orders',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.notifications_outlined),
            //   activeIcon: Icon(Icons.notifications),
            //   label: 'Notifications',
            // ),

            // BottomNavigationBarItem(
            //   icon: Icon(Icons.analytics_outlined),
            //   activeIcon: Icon(Icons.analytics),
            //   label: 'Analytics',
            // ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.admin_panel_settings_outlined),
            //   activeIcon: Icon(Icons.admin_panel_settings),
            //   label: 'Users',
            // ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.settings_outlined),
            //   activeIcon: Icon(Icons.settings),
            //   label: 'Settings',
            // ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.help_outline),
            //   activeIcon: Icon(Icons.help),
            //   label: 'Help',
            // ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.person_outline),
            //   activeIcon: Icon(Icons.person),
            //   label: 'Profile',
            // ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xFFFF6B35),
          unselectedItemColor: const Color(0xFF718096),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 0,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
