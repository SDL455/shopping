import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_online/features/customer/views/category_card.dart';
import 'package:shopping_online/features/customer/views/widgets/food_card.dart';

class CustomerBrowseScreen extends StatelessWidget {
  const CustomerBrowseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Color(0xFFFF6B35),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'What would you like\nto order today?',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.search, color: Color(0xFF718096)),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'Search for food...',
                          style: GoogleFonts.poppins(
                            color: const Color(0xFF718096),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Categories',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF2D3748),
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CategoryCard(
                        title: 'Pizza',
                        icon: Icons.local_pizza,
                        color: const Color(0xFFFF6B35),
                      ),

                      CategoryCard(
                        title: 'Burger',
                        icon: Icons.lunch_dining,
                        color: const Color(0xFFFF6B35),
                      ),
                      CategoryCard(
                        title: 'Drinks',
                        icon: Icons.local_drink,
                        color: const Color(0xFFFF6B35),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Items',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF2D3748),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'View All',
                        style: GoogleFonts.poppins(
                          color: const Color(0xFFFF6B35),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) => FoodCard(
                    name: 'Delicious Food 2${index + 1}',
                    price: '\ 2${(10.99 + index * 2).toStringAsFixed(2)}',
                    rating: '⭐ 4. 2${5 + index % 4}',
                    onAddTap: () {},
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
