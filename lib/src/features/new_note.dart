import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';

class NewNotePage extends StatefulWidget {
  const NewNotePage({Key? key}) : super(key: key);

  @override
  _NewNotePageState createState() => _NewNotePageState();
}

class _NewNotePageState extends State<NewNotePage> {
  late DropDownItemData _value = DropDownItemData(
    color: AppColors.pink,
    value: "rosa",
  );

  final List<DropDownItemData> list = [
    DropDownItemData(
      color: AppColors.pink,
      value: "rosa",
    ),
    DropDownItemData(
      color: AppColors.green,
      value: "verde",
    ),
    DropDownItemData(
      color: AppColors.purple,
      value: "roxo",
    ),
    DropDownItemData(
      color: AppColors.cyan,
      value: "ciano",
    ),
    DropDownItemData(
      color: AppColors.yellow,
      value: "amarelo",
    ),
  ];

  @override
  void initState() {
    _value = list[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image.asset("assets/images/app_bar_logo.png"),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flex(
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Título",
                            hintStyle: TextStyle(
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w700,
                              fontSize: 16.0,
                              letterSpacing: 0.15,
                              color: Colors.black.withOpacity(0.54),
                            ),
                            labelStyle: TextStyle(
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w700,
                              fontSize: 16.0,
                              letterSpacing: 0.15,
                              color: Colors.black.withOpacity(0.54),
                            ),
                            border: InputBorder.none,
                            errorBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      DropdownButton(
                        underline: Container(),
                        onChanged: (value) {
                          setState(() {
                            _value = value as DropDownItemData;
                          });
                        },
                        value: _value,
                        selectedItemBuilder: (BuildContext context) {
                          return list.map<Widget>((DropDownItemData item) {
                            return Center(
                              child: Container(
                                height: 18.0,
                                width: 18.0,
                                decoration: BoxDecoration(
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
                        .toList(),
                      ),
                    ],
                  ),
                  TextField(
                    maxLines: null,
                    minLines: null,
                    decoration: InputDecoration(
                      hintText: "Digite algo",
                      hintStyle: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.15,
                        color: Colors.black.withOpacity(0.54),
                      ),
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                    ),
                  ),
                ],
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
