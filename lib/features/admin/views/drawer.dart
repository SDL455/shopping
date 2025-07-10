import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_online/routes/app_routes.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: const Color(0xFFFF6B35),
              image: DecorationImage(
                image: AssetImage('assets/logo.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withValues(alpha: 0.3),
                  BlendMode.darken,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 44,
                  backgroundImage: NetworkImage(
                    'https://cdn-icons-png.flaticon.com/512/700/700674.png',
                  ),
                  backgroundColor: Colors.white,
                ),
                SizedBox(height: 12),
                Text(
                  'Admin Menu',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 4,
                        offset: Offset(1, 2),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.dashboard_outlined),
            title: Text('Dashboard'),
            onTap: () {
              Get.offAllNamed(AppRoutes.admin);
            },
          ),
          ListTile(
            leading: Icon(Icons.restaurant_menu_outlined),
            title: Text('Menu'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.bar_chart_outlined),
            title: Text('Reports'),

            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text('Settings'),

            onTap: () {
              Get.to('');
            },
          ),
          ListTile(
            leading: Icon(Icons.people_outline),
            title: Text('Customers'),

            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person_outline),
            title: Text('Profile'),

            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
