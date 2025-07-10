import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'add_menu_item_dialog.dart';

class MenuManagementScreen extends StatelessWidget {
  const MenuManagementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Menu Management',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => const AddMenuItemDialog(),
                  );
                },
                icon: const Icon(Icons.add),
                label: const Text('Add Item'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF6B35),
                  foregroundColor: Colors.white,
                ),
              ),
            ],
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
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.fastfood,
                        size: 40,
                        color: Color(0xFFFF6B35),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Delicious Food Item 2${index + 1}',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF2D3748),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Fresh ingredients, amazing taste',
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF718096),
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            '\$${(10.99 + index * 2).toStringAsFixed(2)}',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFFFF6B35),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.edit,
                            color: Color(0xFF3B82F6),
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.delete,
                            color: Color(0xFFEF4444),
                          ),
                          onPressed: () {},
                        ),
                      ],
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
