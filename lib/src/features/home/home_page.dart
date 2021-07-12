import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:bloco_de_notas/src/shared/constants/text_styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        child: Container(
          width: 56.0,
          height: 56.0,
          decoration: BoxDecoration(
            gradient: AppColors.blueGradient,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 14.0,
            ),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: AppColors.blueGradient,
        ),
        child: Stack(
          children: [
            Image.asset(
              "assets/images/boy_with_phone.png",
              fit: BoxFit.scaleDown,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Hero(
                    tag: "notes_logo",
                    child: Image.asset(
                      "assets/images/notes_logo.png",
                    ),
                  ),
                  Hero(
                    tag: "journal",
                    child: Material(
                      color: Colors.transparent,
                      child: Text(
                        "journal",
                        style: TextStyles.white48w700Montserrat,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Card(
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 24.0,
                    bottom: 104.0,
                    left: 40.0,
                    right: 34.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Não importa onde você\nesteja! Guarde suas ideias pra depois :)",
                        style: TextStyles.purple24w400Roboto,
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      Text(
                        "Comece agora a criar as suas notas!",
                        style: TextStyles.cyan16w400Roboto,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
