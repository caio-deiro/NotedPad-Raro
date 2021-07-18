import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto1/modules/shared/constants/App_colors.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.pushNamed(context, 'createnote');
        },
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 24,
          ),
          child: Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                gradient: AppColors.linear,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.add)),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/splashbackground.png'),
              fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Image.asset(
              'assets/images/guy_with_phone.png',
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 141),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Hero(
                        tag: 'vector_logo',
                        child: Align(
                          alignment: Alignment(0.0, 0.01),
                          child: Image.asset(
                            'assets/images/vector.png',
                            height: 48,
                            width: 48,
                          ),
                        )),
                    Hero(
                      tag: 'journal',
                      child: Material(
                        color: Colors.transparent,
                        child: Text(
                          'journal',
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 48,
                                  letterSpacing: -0.05,
                                  color: Colors.white)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Card(
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 24.0, bottom: 104.3, right: 34.0, left: 54),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Não importa onde você esteja! Guarde suas ideias pra depois ;)',
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.darkPurple)),
                        ),
                        SizedBox(
                          height: 24.0,
                        ),
                        Text(
                          'Comece agora a criar as suas notas!',
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: AppColors.cyan,
                          )),
                        ),
                        SizedBox(
                          height: 24,
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
