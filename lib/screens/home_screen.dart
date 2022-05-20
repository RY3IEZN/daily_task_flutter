// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = "/home-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Task Manager",
          style: GoogleFonts.montserrat(),
        ),
      ),
      body: Center(
        child: Text("No task Added yet", style: GoogleFonts.montserrat()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) => Container(
                    padding: EdgeInsets.all(20),
                    //height: 500,
                    color: Colors.blueGrey,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Add Task",
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontSize: 20,
                                )),
                            GestureDetector(
                                onTap: () => Navigator.of(context).pop(),
                                child: Icon(Icons.close))
                          ],
                        ),
                      ],
                    ),
                  ));
          print("modal pressed");
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        backgroundColor: Colors.purpleAccent,
      ),
    );
  }
}
