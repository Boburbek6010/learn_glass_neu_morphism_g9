import 'package:flutter/material.dart';
import 'package:learn_glass_neu_morphism_g9/pages/glass_page.dart';
import 'package:learn_glass_neu_morphism_g9/pages/neumorphic_page.dart';

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GlassPage(),
    );
  }
}