import 'package:flutter/material.dart';
import 'package:steady_as_a_rock/data/arock_info.dart';

class EditScreen extends StatefulWidget {
  ArockInfo? arockInfo;
  EditScreen({super.key, this.arockInfo});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  final TextEditingController _arockController = TextEditingController();
  final TextEditingController _whoController = TextEditingController();
  final TextEditingController _birthYearController = TextEditingController();
  final TextEditingController _deathYearController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 24,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "new Arock",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("*Arock"),
              Container(
                margin: EdgeInsets.only(top: 8),
                height: 41,
                child: TextField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffd9d9d9),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "좋은 일본 문화 받아들이자.",
                      hintStyle: TextStyle(
                          color: Color(
                        0xffb4b4b4,
                      ))),
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                  controller: _arockController,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text("*Who"),
              Container(
                margin: EdgeInsets.only(top: 8),
                height: 41,
                child: TextField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffd9d9d9),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "김대중",
                      hintStyle: TextStyle(
                          color: Color(
                        0xffb4b4b4,
                      ))),
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                  controller: _whoController,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text("BirthYear"),
              Container(
                margin: EdgeInsets.only(top: 8),
                height: 41,
                child: TextField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffd9d9d9),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "좋은 일본 문화 받아들이자.",
                      hintStyle: TextStyle(
                          color: Color(
                        0xffb4b4b4,
                      ))),
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                  controller: _arockController,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text("DeathYear"),
              Container(
                margin: EdgeInsets.only(top: 8),
                height: 41,
                child: TextField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffd9d9d9),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "좋은 일본 문화 받아들이자.",
                      hintStyle: TextStyle(
                          color: Color(
                        0xffb4b4b4,
                      ))),
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                  controller: _arockController,
                ),
              ),
              Text('arock score'),
              Row(
                children: [
                  Container(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
