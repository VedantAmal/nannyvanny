import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                  SizedBox(height: 12),
                  Text('Emily Cyrus', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFFD16BA5))),
                ],
              ),
            ),
            const SizedBox(height: 32),
            _drawerItem('Home', Icons.home),
            _drawerItem('Book A Nanny', Icons.child_friendly),
            _drawerItem('How It Works', Icons.info_outline),
            _drawerItem('Why Nanny Vanny', Icons.favorite),
            _drawerItem('My Bookings', Icons.book),
            _drawerItem('My Profile', Icons.person),
            _drawerItem('Support', Icons.support_agent),
          ],
        ),
      ),
    );
  }

  Widget _drawerItem(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF2D2A4A)),
          const SizedBox(width: 18),
          Text(title, style: const TextStyle(fontSize: 16, color: Color(0xFF2D2A4A))),
        ],
      ),
    );
  }
} 