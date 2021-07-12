import 'package:bloco_de_notas/src/features/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:bloco_de_notas/src/shared/constants/text_styles.dart';
import 'package:flutter/rendering.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late final AnimationController _topAnimationController =
      AnimationController(vsync: this, duration: Duration(seconds: 1));
  late final AnimationController _bottomAnimationController =
      AnimationController(vsync: this, duration: Duration(seconds: 1));
  late Animation<double> topAnimation;
  late Animation<double> bottomAnimation;

  late double topBegin = 0.0;
  late double topEnd = 0.0;
  late double bottomBegin = 0.0;
  late double bottomEnd = 0.0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      topBegin = MediaQuery.of(context).size.height - (MediaQuery.of(context).size.height + 300);
      topEnd = MediaQuery.of(context).size.height / 3.0;
      bottomBegin = MediaQuery.of(context).size.height + 300;
      bottomEnd = MediaQuery.of(context).size.height / 1.35;

      topAnimation =
        Tween(begin: topBegin, end: topEnd).animate(_topAnimationController);
      bottomAnimation = Tween(begin: bottomBegin, end: bottomEnd)
        .animate(_bottomAnimationController);
    });

    _topAnimationController.forward();
    _bottomAnimationController.forward().whenCompleteOrCancel(() {
      Future.delayed(Duration(seconds: 1)).then((value) => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HomePage())));
    });
  }

  @override
  void dispose() {
    _topAnimationController.dispose();
    _bottomAnimationController.dispose();

    super.dispose();
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
          alignment: Alignment.center,
          children: [
            AnimatedBuilder(
                animation: _topAnimationController,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Hero(
                      tag: "image",
                      child: Image.asset(
                        "assets/images/notes_logo.png",
                        width: 100,
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Hero(
                          tag: "text",
                          child: Material(
                            color: Colors.transparent,
                            child: Text(
                              "journal",
                              style: TextStyles.white72w700Monserrat,
                            ),
                          ),
                        ),
                        Text(
                          "YOUR ACADEMY'S BEST FRIEND",
                          style: TextStyles.white13w300Monserrat,
                          textAlign: TextAlign.end,
                        ),
                      ],
                    ),
                  ],
                ),
                builder: (BuildContext context, Widget? child) {
                  return Transform.translate(
                    offset: Offset(Alignment.topCenter.x, topAnimation.value),
                    child: child,
                  );
                }),
            AnimatedBuilder(
                animation: _bottomAnimationController,
                child: Column(
                  children: [
                    Image.asset("assets/images/powered_by.png"),
                    Image.asset("assets/images/raro_academy_logo.png"),
                  ],
                ),
                builder: (BuildContext context, Widget? child) {
                  return Transform.translate(
                    offset:
                        Offset(Alignment.topCenter.x, bottomAnimation.value),
                    child: child,
                  );
                }),
          ],
        ),
      ),
    );
  }
}
