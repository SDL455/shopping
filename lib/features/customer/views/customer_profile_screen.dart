import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerProfileScreen extends StatelessWidget {
  const CustomerProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          CircleAvatar(
            radius: 60,
            backgroundColor: const Color(0xFFFF6B35).withOpacity(0.1),
            child: const Icon(Icons.person, size: 60, color: Color(0xFFFF6B35)),
          ),
          const SizedBox(height: 20),
          Text(
            'Welcome Guest!',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF2D3748),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Login to access your profile and order history',
            style: GoogleFonts.poppins(color: const Color(0xFF718096)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text(
                'Login to Your Account',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  'Quick Access',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF2D3748),
                  ),
                ),
                const SizedBox(height: 16),
                ListTile(
                  leading: const Icon(
                    Icons.help_outline,
                    color: Color(0xFFFF6B35),
                  ),
                  title: Text(
                    'Help & Support',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF2D3748),
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.info_outline,
                    color: Color(0xFFFF6B35),
                  ),
                  title: Text(
                    'About Us',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF2D3748),
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.share_outlined,
                    color: Color(0xFFFF6B35),
                  ),
                  title: Text(
                    'Share App',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF2D3748),
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
