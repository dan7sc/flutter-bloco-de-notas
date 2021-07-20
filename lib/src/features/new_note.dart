import 'package:flutter/material.dart';

class NewNotePage extends StatefulWidget {
  @override
  _NewNotePageState createState() => _NewNotePageState();
}

class _NewNotePageState extends State<NewNotePage> {
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
            child: Column(
              children: [
                TextField(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
