import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((timeStamp) {
      Future.delayed(Duration(seconds: 2))
          .then((value) => Navigator.pushNamed(context, 'home'));
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
            image: DecorationImage(
                image: AssetImage('assets/images/splashbackground.png'),
                fit: BoxFit.cover),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              AnimatedCard(
                direction: AnimatedCardDirection.top,
                duration: Duration(seconds: 1),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                        top: MediaQuery.of(context).size.height / 2 - 108,
                        child: Hero(
                            tag: 'vector_logo',
                            child: Image.asset('assets/images/vector.png'))),
                    Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Hero(
                            tag: 'journal',
                            child: Container(
                              child: Text(
                                'journal',
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 72,
                                        letterSpacing: -0.05,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                'YOUR ACADEMY`S BEST FRIEND',
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                  letterSpacing: 0.0165,
                                )),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 40.0,
                child: AnimatedCard(
                  direction: AnimatedCardDirection.bottom,
                  duration: Duration(seconds: 1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/poweredby.png',
                        width: 100,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Image.asset(
                        'assets/images/rarologo.png',
                        width: 100,
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
