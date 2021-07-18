import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto1/modules/shared/constants/App_colors.dart';
import 'package:projeto1/modules/shared/widgets/dropdown_widget.dart';

class CreatenotePage extends StatefulWidget {
  CreatenotePage({Key? key}) : super(key: key);

  @override
  _CreatenotePageState createState() => _CreatenotePageState();
}

class _CreatenotePageState extends State<CreatenotePage> {
  late DropDownItemData _value = DropDownItemData(
    color: AppColors.pink,
    value: 'pink',
  );

  final List<DropDownItemData> list = [
    DropDownItemData(
      color: AppColors.pink,
      value: "pink",
    ),
    DropDownItemData(
      color: AppColors.green,
      value: "green",
    ),
    DropDownItemData(
      color: AppColors.darkPurple,
      value: 'purple',
    ),
    DropDownItemData(
      color: AppColors.cyan,
      value: 'cyan',
    ),
    DropDownItemData(color: AppColors.yellow, value: 'yellow')
  ];

  @override
  void initState() {
    _value = list[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 34.0),
          child: Image.asset('assets/images/jornal_create_note_page.png'),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Flex(
                        direction: Axis.horizontal,
                        children: [
                          Expanded(
                              child: TextField(
                            style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                    fontSize: 16.0,
                                    letterSpacing: 0.15,
                                    color: Colors.black.withOpacity(0.54))),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              errorBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                              hintText: 'Título',
                              hintStyle: TextStyle(
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w700,
                                fontSize: 16.0,
                                letterSpacing: 0.15,
                                color: Colors.black.withOpacity(0.54),
                              ),
                            ),
                          )),
                          DropdownButton(
                              underline: Container(),
                              onChanged: (value) {
                                setState(() {
                                  _value = value as DropDownItemData;
                                });
                              },
                              value: _value,
                              selectedItemBuilder: (BuildContext context) {
                                return list
                                    .map<Widget>((DropDownItemData item) {
                                  return Center(
                                    child: Container(
                                      height: 18.0,
                                      width: 18.0,
                                      decoration: BoxDecoration(
                                        color: _value.color,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  );
                                }).toList();
                              },
                              focusColor: Colors.transparent,
                              items: list
                                  .map(
                                    (e) => DropdownMenuItem(
                                      value: e,
                                      child: Center(
                                        child: Container(
                                          height: 18.0,
                                          width: 18.0,
                                          decoration: BoxDecoration(
                                            color: e.color,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList())
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Digite aqui...',
                        hintStyle: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 16.0,
                            letterSpacing: 0.15,
                          ),
                        ),
                        border: InputBorder.none,
                        errorBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                      ),
                      maxLength: null,
                      maxLines: null,
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 14.0,
                          letterSpacing: 0.15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: MediaQuery.of(context).viewInsets.bottom == 0,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding:
                    const EdgeInsets.only(right: 46, left: 261, bottom: 92),
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0)))),
                    onPressed: () {
                      Navigator.pushNamed(context, 'notepage');
                    },
                    child: Text(
                      'SALVAR',
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        letterSpacing: 0.4,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
              ),
            ),
          ),
          Visibility(
            visible: MediaQuery.of(context).viewInsets.bottom == 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 24.0, right: 24.0, bottom: 24.0),
                child: SafeArea(
                  bottom: true,
                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(Icons.date_range),
                          color: Colors.black.withOpacity(0.54),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.attach_file_outlined),
                          color: Colors.black.withOpacity(0.54),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.favorite_border),
                          color: Colors.black.withOpacity(0.54),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.share),
                          color: Colors.black.withOpacity(0.54),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.delete),
                          color: Colors.black.withOpacity(0.54),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DropDownItemData {
  final Color color;
  final String value;

  DropDownItemData({
    required this.color,
    required this.value,
  });
}
