import 'package:flutter/material.dart';
import 'package:flutterdevcamp/flutterdevcampfonts.dart';

void main() {

  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: 'Product Sans Regular'
      ),
      debugShowCheckedModeBanner: false,
      home: FlutterDevCampApp(),
    )
  );
}

class FlutterDevCampApp extends StatefulWidget {
  const FlutterDevCampApp({Key? key}) : super(key: key);

  @override
  State<FlutterDevCampApp> createState() => _FlutterDevCampAppState();
}

class _FlutterDevCampAppState extends State<FlutterDevCampApp> with SingleTickerProviderStateMixin {
  
  late AnimationController sunController;

  @override
  void initState() {
    sunController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5)
    )..repeat();
  }
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Container(
              height: 700,
              color: Color(0xFF1B77B1),
              child: Stack(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text('Flutter',
                                style: TextStyle(
                                  color: Colors.white, 
                                  fontSize: 50
                                )
                              ),
                              const Icon(FlutterDevCampFonts.icon1,
                                size: 50,
                                color: Colors.white
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 60),
                                child: const Icon(FlutterDevCampFonts.icon2,
                                  size: 60,
                                  color: Colors.white
                                )
                              ),
                            ],
                          ),
                          const Text('Dev Camp \'22',
                            style: TextStyle(
                              color: Colors.white, 
                              fontSize: 80,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              top: 15, bottom: 15, left: 25, right: 25
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFF44D1FD),
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: Text('Web Edition',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1B77B1))
                            )
                          )
                        ],
                      ),
                    ),
                  ),

                  // trees
                  const Positioned(
                    bottom: -20,
                    left: 50,
                    child: Icon(
                      Icons.forest, size: 150, 
                      color: Color(0xFF2AC384)
                    )
                  ),

                  const Positioned(
                    bottom: -10,
                    left: 250,
                    child: Opacity(
                      opacity: 0.5,
                      child: Icon(
                        Icons.forest, size: 100, 
                        color: Color(0xFF2AC384)
                      ),
                    )
                  ),


                  // sun
                 Positioned(
                    top: 50,
                    right: 50,
                    child: RotationTransition(
                      turns: Tween<double>(begin: 0.0, end: 1.0)
                      .animate(CurvedAnimation(parent: sunController, curve: Curves.linear)),
                      child: Icon(
                        FlutterDevCampFonts.icon4, size: 120, 
                        color: Colors.white.withOpacity(0.5)
                      ),
                    )
                  )
                ],
              )
            ),





            Container(
              height: 600,
              color: Color(0xFF2AC385)
            ),
            Container(
              height: 600,
              color: Color(0xFFFAFAFA)
            ),
            Container(
              height: 300,
              color: Colors.white
            ),
            Container(
              height: 150,
              color: Color(0xFF024169)
            ),
          ],
        ),
      ),
    );
  }
}