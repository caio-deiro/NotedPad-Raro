import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto1/modules/shared/constants/App_colors.dart';

class Card1Widget extends StatelessWidget {
  Card1Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 145,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.12),
              offset: Offset(0, 1),
              blurRadius: 5,
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.14),
              offset: Offset(0, 2),
              blurRadius: 2,
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.20),
              offset: Offset(0, 3),
              blurRadius: 1,
            )
          ], borderRadius: BorderRadius.circular(4), color: AppColors.pink),
          child: Padding(
            padding: const EdgeInsets.only(
                top: 8, bottom: 8, left: 7.75, right: 13.17),
            child: Text(
              'Não esquecer',
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.15,
                color: Colors.white,
              )),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(8.0),
          width: 145,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.12),
              offset: Offset(0, 1),
              blurRadius: 5,
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.14),
              offset: Offset(0, 2),
              blurRadius: 2,
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.20),
              offset: Offset(0, 3),
              blurRadius: 1,
            )
          ], color: Color(0xFFF2F5FA), borderRadius: BorderRadius.circular(4)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.date_range,
                    size: 18,
                  ),
                  Icon(
                    Icons.attach_file_outlined,
                    size: 18,
                  ),
                  Icon(
                    Icons.favorite_outlined,
                    size: 18,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consecter adipiscing elit, sed incididunt ut labore et dolore aliqua',
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  height: 1.5,
                  letterSpacing: 0.16,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Criação: 08/07/21',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                    fontSize: 10,
                    color: Colors.black.withOpacity(0.54)),
              ),
            ],
          ),
        )
      ],
    );
  }
}
