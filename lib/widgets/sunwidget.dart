import 'package:flutter/material.dart';
import 'package:flutterdevcamp/helpers/flutterdevcampfonts.dart';

class SunWidget extends StatefulWidget {
  SunWidget({Key? key}) : super(key: key);

  @override
  State<SunWidget> createState() => _SunWidgetState();
}

class _SunWidgetState extends State<SunWidget> with SingleTickerProviderStateMixin {
  
  late AnimationController sunController;

  @override
  void initState() {
    sunController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 8)
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50,
      right: 50,
      child: SizedBox(
        width: 200,
        height: 200,
        child: Stack(
          children: [
            RotationTransition(
              turns: Tween<double>(begin: 0.0, end: 1.0)
              .animate(CurvedAnimation(parent: sunController, curve: Curves.linear)),
              child: Icon(
                FlutterDevCampFonts.icon4, size: 200, 
                color: Colors.white.withOpacity(0.4)
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(right: 5),
                child: Icon(
                  FlutterDevCampFonts.icon3, size: 40, 
                  color: Colors.white.withOpacity(0.5)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}