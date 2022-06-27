import 'package:flutter/material.dart';
import 'package:flutterdevcamp/helpers/flutterdevcampfonts.dart';

class CampingWidget extends StatefulWidget {
  CampingWidget({Key? key}) : super(key: key);

  @override
  State<CampingWidget> createState() => _CampingWidgetState();
}

class _CampingWidgetState extends State<CampingWidget> with TickerProviderStateMixin {
  
  late AnimationController controller;
  late AnimationController controller2;
  late AnimationController controller3;
  List<AnimationController> controllers = [];

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3)
    )..repeat();

    controller2 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3)
    );

    controller3 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3)
    );

    controllers
    ..add(controller)
    ..add(controller2)
    ..add(controller3);
  }

  @override 
  void dispose() {
    for(var c in controllers) {
      c.dispose();
    }
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(milliseconds: 1800), () {
      controller2.repeat();
    });

    Future.delayed(const Duration(milliseconds: 3600), () {
      controller3.repeat();
    });

    return Positioned.fill(
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 50,
              color: Colors.grey[500]
            )
          ),
          Positioned(
            bottom: 30,
            left: 50,
            child: Icon(Icons.forest, size: 150, color: Colors.grey[500])
          ),
          Positioned(
            bottom: 30,
            left: 200,
            child: Icon(FlutterDevCampFonts.icon1, size: 150, color: Colors.grey[500])
          ),

          ...List.generate(
            controllers.length, (index) {
              var ctl = controllers[index];

              return Positioned(
                bottom: 20,
                left: 380,
                child: FadeTransition(
                  opacity: Tween<double>(begin: 1.0, end: 0.0).
                  animate(CurvedAnimation(parent: ctl, curve: Curves.easeInOut)),
                  child: SizedBox(
                    width: 200,
                    height: 300,
                    child: Stack(
                      children: [
                        SlideTransition(
                          position: Tween<Offset>(
                            begin: Offset(0.0, 1.5),
                            end: Offset(0.5, -1.0)
                          ).animate(CurvedAnimation(parent: ctl, curve: Curves.easeInOut)
                        ),
                          child: ScaleTransition(
                            scale: Tween<double>(
                              begin: 1.5,
                              end: 1.0
                            ).animate(CurvedAnimation(parent: ctl, curve: Curves.easeInOut)),
                            child: Icon(Icons.cloud, size: 60, color: Colors.grey[500]))
                        )
                      ]
                    )
                  )
                ),
              );
            }
          ),
        ],
      ),
    );
  }
}