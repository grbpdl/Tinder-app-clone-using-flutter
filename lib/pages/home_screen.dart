import 'package:flutter/material.dart';
import 'package:tinder_clone/widgets/profile_section.dart';
import 'package:tinder_clone/widgets/topbar.dart';

import '../widgets/bottombar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [TopBar(), Profile(), BottomBar()],
    );
  }
}
