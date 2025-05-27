import 'package:flutter/material.dart';
import '../widgets/home_body.dart';
import '../widgets/main_drawer.dart';
import '../widgets/bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: MainDrawer(),
      body: HomeBody(),
      bottomNavigationBar: BottomNav(),
    );
  }
} 