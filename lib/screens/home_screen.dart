// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = "/home-screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        child: Text("No task Added yet just for git", style: GoogleFonts.montserrat()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) => Container(
                    padding: EdgeInsets.all(20),
                    height: 250,
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
                        Divider(thickness: 1),
                        SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(color: Colors.blue)),
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Enter Task",
                              hintStyle: GoogleFonts.montserrat()),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Container(
                                width:
                                    MediaQuery.of(context).size.width / 2 - 30,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        onPrimary: Colors.black),
                                    onPressed: (() =>
                                        print("reset button pressed")),
                                    child: Text(
                                      "Reset",
                                      style: GoogleFonts.montserrat(),
                                    )),
                              ),
                              Container(
                                width:
                                    MediaQuery.of(context).size.width / 2 - 30,
                                child: ElevatedButton(
                                    onPressed: (() =>
                                        print("Add button pressed")),
                                    child: Text(
                                      "Add",
                                      style: GoogleFonts.montserrat(),
                                    )),
                              )
                            ],
                          ),
                        )
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
