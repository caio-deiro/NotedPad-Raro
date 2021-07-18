import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto1/modules/shared/constants/App_colors.dart';
import 'package:projeto1/modules/shared/widgets/NotePageWidgets/card1_widget.dart';
import 'package:projeto1/modules/shared/widgets/NotePageWidgets/card2_widget.dart';
import 'package:projeto1/modules/shared/widgets/NotePageWidgets/card3_widget.dart';
import 'package:projeto1/modules/shared/widgets/NotePageWidgets/card4_widget.dart';
import 'package:projeto1/modules/shared/widgets/NotePageWidgets/card5_widget.dart';
import 'package:projeto1/modules/shared/widgets/customScrollBar.dart';

class NotePage extends StatefulWidget {
  NotePage({Key? key}) : super(key: key);

  @override
  _NotePageState createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Image.asset(
          'assets/images/jornalNotepage.png',
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image:
                      AssetImage('assets/images/backgroundAppBarNotePage.png'),
                  fit: BoxFit.cover)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 14),
        child: Customscrollbar(
          thumbcolor: AppColors.linear,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 60, bottom: 26, right: 61, top: 18),
                  child: TextField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.search),
                        hintText: 'Pesquisar',
                        hintStyle: GoogleFonts.roboto(
                            fontSize: 18.0,
                            letterSpacing: 0.15,
                            color: Colors.black.withOpacity(0.36))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80, left: 30),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card1Widget(),
                          SizedBox(
                            width: 16,
                          ),
                          Card2Widget(),
                        ],
                      ),
                      Row(
                        children: [
                          Card3Widget(),
                          SizedBox(
                            width: 16,
                          ),
                          Card4Widget(),
                        ],
                      ),
                      Row(
                        children: [Card5Widget()],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.pushNamed(context, 'createnote');
        },
        child: Visibility(
          visible: MediaQuery.of(context).viewInsets.bottom == 0,
          child: Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              gradient: AppColors.linear,
              shape: BoxShape.circle,
              boxShadow: [
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
              ],
            ),
            child: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.pushNamed(context, 'createnote');
              },
            ),
          ),
        ),
      ),
    );
  }
}
