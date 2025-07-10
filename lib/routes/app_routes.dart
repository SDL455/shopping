import 'package:get/get.dart';
import 'package:shopping_online/cores/screen/splash_screen.dart';
import 'package:shopping_online/features/admin/views/settings_screen.dart';
import 'package:shopping_online/features/auth/screens/login.dart';
import 'package:shopping_online/features/auth/screens/register_admin.dart';
import 'package:shopping_online/features/auth/screens/register_customer.dart';
import 'package:shopping_online/features/admin/views/admin_home_scree.dart';
import 'package:shopping_online/features/customer/views/customer_home_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String registerAdmin = '/register-admin';
  static const String registerCustomer = '/register-customer';
  static const String admin = '/admin';
  static const String customer = '/customer';
  static const String settings = '/settings';

  static final routes = [
    GetPage(name: splash, page: () => SplashScreen()),
    GetPage(name: login, page: () => const LoginScreen()),
    GetPage(name: registerAdmin, page: () => const RegisterAdminScreen()),
    GetPage(name: registerCustomer, page: () => const RegisterCustomerScreen()),
    GetPage(name: admin, page: () => const AdminHomeScreen()),
    GetPage(name: customer, page: () => const CustomerHomeScreen()),
    GetPage(name: settings, page: () => const SettingsScreen()),
  ];
}
