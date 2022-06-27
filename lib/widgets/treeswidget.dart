import 'package:flutter/material.dart';

class TreesWidget extends StatefulWidget {
  TreesWidget({Key? key}) : super(key: key);

  @override
  State<TreesWidget> createState() => _TreesWidgetState();
}

class _TreesWidgetState extends State<TreesWidget> with TickerProviderStateMixin {

  late AnimationController controller1;
  late AnimationController controller2;
  late AnimationController controller3;
  late AnimationController controller4;

  @override
  void initState() {
    super.initState();

    controller1 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10)
    )..repeat();

    controller2 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 30)
    )..repeat();

    controller3 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 40)
    )..repeat();

    controller4 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 120)
    )..repeat();
  }

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
    
              SlideTransition(
                position: Tween<Offset>(
                  begin: Offset(-1.0, (constraints.maxHeight - 175) / 175),
                  end: Offset(MediaQuery.of(context).size.width / 175, (constraints.maxHeight - 175) / 175)
                  ).animate(CurvedAnimation(parent: controller1, curve: Curves.linear)
                ),
                child: const Icon(
                  Icons.forest, size: 180, 
                  color: Color(0xFF2AC384)
                )
              ),

              SlideTransition(
                position: Tween<Offset>(
                  begin: Offset(-1.0, (constraints.maxHeight - 98) / 98),
                  end: Offset(MediaQuery.of(context).size.width / 98, (constraints.maxHeight - 98) / 98)
                 ).animate(CurvedAnimation(parent: controller2, curve: Curves.linear)
                ),
                child: const Opacity(
                  opacity: 0.5,
                  child: Icon(
                    Icons.forest, size: 100, 
                    color: Color(0xFF2AC384)
                  ),
                )
              ),

    
              Positioned(
                bottom: -7,
                left: MediaQuery.of(context).size.width / 2,
                child: const Opacity(
                  opacity: 0.5,
                  child: Icon(
                    Icons.forest, size: 70, 
                    color: Color(0xFF2AC384)
                  ),
                )
              ),
    
              

              SlideTransition(
                position: Tween<Offset>(
                  begin: Offset(-1.0, (constraints.maxHeight - 145) / 145),
                  end: Offset(MediaQuery.of(context).size.width / 145, (constraints.maxHeight - 145) / 145)
                  ).animate(CurvedAnimation(parent: controller3, curve: Curves.linear)
                ),
                child: const Opacity(
                  opacity: 0.2,
                  child: Icon(
                    Icons.forest, size: 150, 
                    color: Color(0xFF2AC384)
                  ),
                )
              ),
    
              const Positioned(
                bottom: -15,
                right: 320,
                child: Icon(
                  Icons.forest, size: 120, 
                  color: Color(0xFF2AC384)
                )
              ),

              SlideTransition(
                position: Tween<Offset>(
                  begin: Offset(-1.0, (constraints.maxHeight - 240) / 240),
                  end: Offset(MediaQuery.of(context).size.width / 240, (constraints.maxHeight - 240) / 240)
                 ).animate(CurvedAnimation(parent: controller4, curve: Curves.linear)
                ),
                child: const Icon(
                  Icons.forest, size: 250, 
                  color: Color(0xFF2AC384)
                )
              ),
              
            ]
          );
        }
      ),
    );
  }
}