
import 'package:animate_do/animate_do.dart';
import 'package:evently_v1/core/constants/app_assets.dart';
import 'package:evently_v1/core/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(

        body: Center(
          child: FadeIn(
            onFinish: (direction){
              Future.delayed(const Duration(seconds: 2),
                      (){
                    Navigator.pushReplacementNamed(context, routesName.startScreen);
                  });
            },
            child: Column(
              children: [
                const Spacer(),
                Bounce(child: Image.asset(appAssets.appLogo)),
                Bounce(
                  child: Text(
                    "Evently",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      fontFamily: GoogleFonts.jockeyOne().fontFamily,
                      color: theme.primaryColor,
                    ) ,
                  ),
                ),
                const Spacer(),
                FadeInUp(child: const Spacer()),
                Image.asset(appAssets.routeLogo)
              ],
            ),
          ),
        )


    );
  }
}