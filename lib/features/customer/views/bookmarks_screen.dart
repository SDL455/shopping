import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookmarksScreen extends StatelessWidget {
  const BookmarksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Bookmarks',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF2D3748),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Your favorite food items',
            style: GoogleFonts.poppins(color: const Color(0xFF718096)),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.only(bottom: 16),
                padding: const EdgeInsets.all(16),
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
                            'Bookmarked Item 2${index + 1}',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF2D3748),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '⭐ 4.2${5 + index % 4} • 25 min',
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF718096),
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            '\ 2${(10.99 + index * 2).toStringAsFixed(2)}',
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
                            Icons.favorite,
                            color: Color(0xFFEF4444),
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.add_shopping_cart,
                            color: Color(0xFFFF6B35),
                          ),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Please login to add to cart'),
                                backgroundColor: Color(0xFFFF6B35),
                              ),
                            );
                          },
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
