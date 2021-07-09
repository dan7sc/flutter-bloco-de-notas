import 'package:flutter/material.dart';
import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late double screenHeight = 0.0;

  @override
  void initState() {
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((timeStamp) {
      screenHeight = MediaQuery.of(context).size.height;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: AppColors.blueGradient,
        ),
        child: Stack(
          // alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment(0.0, -(screenHeight * 0.0004)),
              child: Image.asset(
                "assets/images/notes_logo.png",
              ),
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "journal",
                    style: TextStyle(
                      fontSize: 72.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontFamily: "Montserrat",
                      letterSpacing: -0.05,
                    ),
                  ),
                  Text(
                    "YOUR ACADEMY'S BEST FRIEND",
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                      fontFamily: "Montserrat",
                      letterSpacing: 0.165,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
