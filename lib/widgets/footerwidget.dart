import 'package:flutter/material.dart';
import 'package:flutterdevcamp/helpers/flutterdevcampfonts.dart';
import 'package:flutterdevcamp/helpers/socialmediaicons.dart';
import 'package:flutterdevcamp/helpers/utils.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50),
      color: Utils.darkBlue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              SizedBox(width: 40),
              Icon(FlutterDevCampFonts.icon5, color: Colors.white),
              SizedBox(width: 40),
              Text('GDG Lawrence', style: TextStyle(fontSize: 30, color: Colors.white))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Follow Us', style: TextStyle(color: Colors.white, fontSize: 20)),
              SizedBox(height: 20),
              Row(
                children: const [
                  Icon(SocialMediaIcons.github, size: 30, color: Colors.white),
                  SizedBox(width: 20),
                  Icon(SocialMediaIcons.twitter, size: 30, color: Colors.white),
                  SizedBox(width: 20),
                  Icon(SocialMediaIcons.linkedin, size: 30, color: Colors.white),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}