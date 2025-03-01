import 'package:animate_do/animate_do.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:evently_v1/core/constants/app_assets.dart';
import 'package:evently_v1/core/provider/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class startScreen extends StatelessWidget {
  const startScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appProvider>(context);
    var theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeInLeftBig(child: Image.asset(appAssets.appLogo,width: 40,)),
                  const SizedBox(width: 8,),
                  FadeInRightBig(
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
                ],
              ),
              Spacer(),
              Expanded(
                flex: 6,
                child: Center(child: Image.asset(appAssets.startImage)),),
              Spacer(),
              Text(
                'Personalize Your Experience',
                style: TextStyle(
                  color: theme.primaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10,),
              Text(
                'Choose your preferred theme and language to get started with a comfortable, tailored experience that suits your style.',
                style: theme.textTheme.bodyMedium,
              ),
              Spacer(),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Language',
                      style: TextStyle(
                        color: theme.primaryColor,
                        fontSize: 24,
                      ),
                    ),
                    AnimatedToggleSwitch<String>.rolling(
                      current: "en",
                      values: ["en","ar"],
                      onChanged: (value) {},
                      iconList: [
                        Image.asset(appAssets.enIcon),
                        Image.asset(appAssets.arIcon),
                      ],
                      height: 40,
                      indicatorSize: Size(40, 40) ,
                      style: ToggleStyle(
                        backgroundColor: Colors.transparent,
                        indicatorColor: theme.primaryColor,
                        borderColor: theme.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Theme',
                      style: TextStyle(
                        color: theme.primaryColor,
                        fontSize: 24,
                      ),
                    ),
                    AnimatedToggleSwitch<ThemeMode>.rolling(
                      current: provider.themeMode,
                      values: const [ThemeMode.light,ThemeMode.dark],
                      onChanged: (value) {
                        provider.changeTheme();
                      },
                      iconList: [
                        Image.asset(appAssets.sunIcon),
                        Image.asset(appAssets.moonIcon,
                          color: provider.themeMode == ThemeMode.dark? Colors.white: null,
                        ),
                      ],
                      height: 40,
                      indicatorSize: Size(40, 40) ,
                      style: ToggleStyle(
                        backgroundColor: Colors.transparent,
                        indicatorColor: theme.primaryColor,
                        borderColor: theme.primaryColor,
                      ),
                    ),
                  ],
                ),),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: theme.primaryColor,
                              padding: EdgeInsets.all(16),
                              //fixedSize: Size(500, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              )
                          ),
                          onPressed: () {},
                          child:const Text("Let's Start", style: TextStyle(color: Colors.white, fontSize: 18),)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
