
import 'package:flutter/material.dart';
import 'package:learn_glass_neu_morphism_g9/common/blur_container.dart';
import 'package:learn_glass_neu_morphism_g9/common/custom_scaffold.dart';

class GlassPage extends StatefulWidget {
  const GlassPage({super.key});

  @override
  State<GlassPage> createState() => _GlassPageState();
}

class _GlassPageState extends State<GlassPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlurContainer(
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 255, 255, 0.3),
                      borderRadius: BorderRadius.circular(21),
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      )
                  ),
                  child: const Center(child: Text("Hello")),
                ),
              ),
              // GlassContainer.clearGlass(
              //   height: 300,
              //   width: 300,
              //   color: Colors.white.withOpacity(0.3),
              // )
              // GlassContainer.frostedGlass(
              //   height: 300,
              //   width: 300,
              //   color: Colors.white.withOpacity(0.3),
              // )
            ],
          )
        ),
      ),
    );
  }
}
