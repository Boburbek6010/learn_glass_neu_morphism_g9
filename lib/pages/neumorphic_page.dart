import 'package:flutter/material.dart';

class NeumorphicPage extends StatefulWidget {
  const NeumorphicPage({super.key});

  @override
  State<NeumorphicPage> createState() => _NeumorphicPageState();
}

class _NeumorphicPageState extends State<NeumorphicPage> {
  final Offset offset = const Offset(10, 10);
  bool isPressed = true;
  final BorderRadius borderRadius = BorderRadius.circular(12);
  final Duration duration = const Duration(milliseconds: 200);

  void _onPointerUp(PointerUpEvent event){
    setState(() {
      isPressed = true;
    });
  }

  void _onPointerDown(PointerDownEvent event){
    setState(() {
      isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(224, 222, 224, 1),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 400,
              width: 400,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(224, 222, 224, 1),
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    Color.fromRGBO(224, 222, 224, 1),
                    Colors.grey,
                  ],
                  center: AlignmentDirectional(0.04, 0.04),
                  focal: AlignmentDirectional(0, 0),
                  radius: 0.55,
                  focalRadius: 0,
                  stops: [0.8, 1],
                ),
              ),
            ),
            Listener(
              onPointerUp: _onPointerUp,
              onPointerDown: _onPointerDown,
              child: AnimatedContainer(
                duration: duration,
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(224, 222, 224, 1),
                  shape: BoxShape.circle,
                  gradient: !isPressed ?const RadialGradient(
                    colors: [
                      Color.fromRGBO(224, 222, 224, 1),
                      Colors.grey,
                    ],
                    center: AlignmentDirectional(0.04, 0.04),
                    focal: AlignmentDirectional(0, 0),
                    radius: 0.55,
                    focalRadius: 0,
                    stops: [0.8, 1],
                  ):null,
                  boxShadow: isPressed ?[
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        blurRadius: 15,
                        spreadRadius: 5,
                        offset: -offset),
                    BoxShadow(
                      color: Colors.white38,
                      blurRadius: 15,
                      spreadRadius: 5,
                      offset: offset,
                    ),
                  ]:null,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
