import 'package:animate_do/animate_do.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:evently_v1/core/constants/app_assets.dart';
import 'package:evently_v1/core/provider/app_provider.dart';
import 'package:evently_v1/main.dart';
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
                textDirection: TextDirection.ltr,
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
                child: Center(
                    child: Image.asset(
                        appAssets.startImage,

                    )),),
              Spacer(),
              Text(
                context.tr.start_title,
                style: TextStyle(
                  color: theme.primaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10,),
              Text(
                context.tr.start_description,
                style: theme.textTheme.bodyMedium,
              ),
              Spacer(),
              Expanded(
                child: Row(
                  textDirection: TextDirection.ltr,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      context.tr.lang,
                      style: TextStyle(
                        color: theme.primaryColor,
                        fontSize: 24,
                      ),
                    ),
                    AnimatedToggleSwitch<String>.rolling(
                      current: provider.lang,
                      values: ["en","ar"],
                      onChanged: (value) {
                        provider.changeLanguage();
                      },
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
                  textDirection: TextDirection.ltr,

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      context.tr.theme,
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
              SizedBox(height: 10,),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: theme.primaryColor,
                              padding: EdgeInsets.all(16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              )
                          ),
                          onPressed: () {},
                          child: Text(
                            context.tr.l_start,
                            style: TextStyle(color: Colors.white, fontSize: 18),)),
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
