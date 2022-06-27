import 'package:flutter/material.dart';
import 'package:flutterdevcamp/helpers/flutterdevcampfonts.dart';
import 'package:flutterdevcamp/helpers/utils.dart';
import 'package:flutterdevcamp/widgets/flutterdevcampheader.dart';
import 'package:flutterdevcamp/widgets/footerwidget.dart';
import 'package:flutterdevcamp/widgets/primarybanner.dart';
import 'package:flutterdevcamp/widgets/secondarybanner.dart';
import 'package:flutterdevcamp/widgets/staytunedbanner.dart';
import 'package:flutterdevcamp/widgets/sunwidget.dart';
import 'package:flutterdevcamp/widgets/treeswidget.dart';
import 'package:flutterdevcamp/widgets/upcomingeventsbanner.dart';

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

class _FlutterDevCampAppState extends State<FlutterDevCampApp> {
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 80,
        iconTheme: IconThemeData(color: Colors.white, size: 30),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            PrimaryBanner(),
            
            SecondaryBanner(),

            StayTunedBanner(),
            
            UpcomingEventsBanner(),
            
            FooterWidget()
          ],
        ),
      ),
    );
  }
}