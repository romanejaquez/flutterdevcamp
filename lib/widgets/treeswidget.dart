import 'package:flutter/material.dart';
import 'package:flutterdevcamp/helpers/utils.dart';
import 'package:flutterdevcamp/models/primarybannerstyles.dart';

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

    PrimaryBannerStyles styles = Utils.primaryBannerStyles[Utils.getDeviceType(context)] as PrimaryBannerStyles;

    return Positioned.fill(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            clipBehavior: Clip.none,
            children: [
                
              SlideTransition(
                position: Tween<Offset>(
                  begin: Offset(-1.0, (constraints.maxHeight - styles.tree1Size) / styles.tree1Size),
                  end: Offset(MediaQuery.of(context).size.width / styles.tree1Size, (constraints.maxHeight - styles.tree1Size) / styles.tree1Size)
                  ).animate(CurvedAnimation(parent: controller1, curve: Curves.linear)
                ),
                child: Icon(
                  Icons.forest, size: styles.tree1Size + (styles.tree1Size * 0.020), 
                  color: Utils.mainGreen
                )
              ),
              
              SlideTransition(
                position: Tween<Offset>(
                  begin: Offset(-1.0, (constraints.maxHeight - styles.tree2Size) / styles.tree2Size),
                  end: Offset(MediaQuery.of(context).size.width / styles.tree2Size, (constraints.maxHeight - styles.tree2Size) / styles.tree2Size)
                 ).animate(CurvedAnimation(parent: controller2, curve: Curves.linear)
                ),
                child: Opacity(
                  opacity: 0.5,
                  child: Icon(
                    Icons.forest, size: styles.tree2Size + (styles.tree2Size * 0.020), 
                    color: Utils.mainGreen
                  ),
                )
              ),
              
              Positioned(
                bottom: -7,
                left: MediaQuery.of(context).size.width / 2 - (styles.tree3Size / 2),
                child: Opacity(
                  opacity: 0.5,
                  child: Icon(
                    Icons.forest, size: styles.tree3Size, 
                    color: Utils.mainGreen
                  ),
                )
              ),

              Positioned(
                bottom: styles.tree4BottomMargin,
                right: styles.tree4RightMargin,
                child: Icon(
                  Icons.forest, size: styles.tree4Size, 
                  color: Utils.mainGreen
                )
              ),
                
              Visibility(
                visible: styles.tree5Visibility,
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: Offset(-1.0, (constraints.maxHeight - 145) / 145),
                    end: Offset(MediaQuery.of(context).size.width / 145, (constraints.maxHeight - 145) / 145)
                    ).animate(CurvedAnimation(parent: controller3, curve: Curves.linear)
                  ),
                  child: const Opacity(
                    opacity: 0.2,
                    child: Icon(
                      Icons.forest, size: 150, 
                      color: Utils.mainGreen
                    ),
                  )
                ),
              ),
                
              Visibility(
                visible: styles.tree6Visibility,
                child: const Positioned(
                  bottom: -15,
                  right: 320,
                  child: Icon(
                    Icons.forest, size: 120, 
                    color: Utils.mainGreen
                  )
                ),
              ),
              
              Visibility(
                visible: styles.tree7Visibility,
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: Offset(-1.0, (constraints.maxHeight - 230) / 230),
                    end: Offset(MediaQuery.of(context).size.width / 230, (constraints.maxHeight - 230) / 230)
                   ).animate(CurvedAnimation(parent: controller4, curve: Curves.linear)
                  ),
                  child: const Icon(
                    Icons.forest, size: 240, 
                    color: Utils.mainGreen
                  )
                ),
              ),
            ]
          );
        }
      ),
    );
  }
}