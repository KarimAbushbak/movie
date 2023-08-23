import 'package:flutter/material.dart';
import 'package:movie/core/constants.dart';
import 'package:movie/core/resources/manager_assets.dart';
import 'package:movie/core/resources/manager_colors.dart';
import 'package:movie/core/resources/manager_font_sizes.dart';
import 'package:movie/core/resources/manager_font_weight.dart';
import 'package:movie/core/resources/manager_strings.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [ Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [

                    ManagerColors.primaryColor,
                    ManagerColors.secondaryColor,
                  ]
              ),

          ) ,

        ),
          Image.asset(
              ManagerAssets.splash1,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Align(
                alignment: Alignment.center,
                child: Image.asset(ManagerAssets.splash2),
              ),
              SizedBox(width: 24,height: 25,),
              Text(
                ManagerStrings.appName ,
                style: TextStyle(
                  fontSize: ManagerFontSizes.s24,
                  fontWeight: ManagerFontWeight.bold,
                  color: ManagerColors.white
                ),
              )
            ],

          ),
          
        
          




        ],

      ),
    );
  }
}
