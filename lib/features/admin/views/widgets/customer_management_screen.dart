import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerManagementScreen extends StatelessWidget {
  const CustomerManagementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Customer Management',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.only(bottom: 12),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: const Color(0xFFFF6B35).withOpacity(0.1),
                      child: Text(
                        'C 2${index + 1}',
                        style: GoogleFonts.poppins(
                          color: const Color(0xFFFF6B35),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Customer 2${index + 1}',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF2D3748),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'customer2${index + 1}@example.com',
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF718096),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            ' 2${index + 5} orders',
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF718096),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.edit, color: Color(0xFF3B82F6)),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
