import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:steady_as_a_rock/data/arock_info.dart';
import 'package:steady_as_a_rock/database/database_helper.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var dbHelper = DatabaseHelper();
  List<ArockInfo> lstArockInfo = [];

  @override
  void initState() {
    super.initState();

    getArockInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            '어록',
            style: TextStyle(
                color: Colors.black, fontSize: 32, fontWeight: FontWeight.bold),
          )),
      body: Container(
        margin: EdgeInsets.all(16),
        child: ListView.builder(
            itemCount: lstArockInfo.length,
            itemBuilder: (context, index) {
              return listItem(index);
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 어록 작성 화면
          Navigator.pushNamed(context, '/edit');
        },
        child: Image.asset(
          'assets/stone.png',
          width: 48,
          height: 48,
        ),
        backgroundColor: Color(0xff7f52fd).withOpacity(0.7),
      ),
    );
  }

  Widget listItem(int index) {
    return Container(
      height: 82,
      margin: EdgeInsets.only(top: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Color(0xffd9d9d9),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            margin: EdgeInsets.only(left: 16, bottom: 16),
            child: Text(
              lstArockInfo[index].quote,
              style: TextStyle(fontSize: 16),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.only(right: 16, bottom: 8),
              child: Text(
                lstArockInfo[index].who,
                style: TextStyle(color: Colors.black, fontSize: 10),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(
                left: 16,
                bottom: 8,
              ),
              child: RatingBar.builder(
                initialRating: lstArockInfo[index].star.toDouble(),
                minRating: 1,
                direction: Axis.horizontal,
                itemSize: 16,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(
                  horizontal: 0,
                ),
                itemBuilder: (context, index) {
                  return Icon(
                    Icons.star,
                    color: Colors.amber,
                  );
                },
                ignoreGestures: true,
                updateOnDrag: false,
                onRatingUpdate: (value) {},
              ),
            ),
          )
        ],
      ),
    );
  }

  Future getArockInfo() async {
    await dbHelper.initDatabase();
    lstArockInfo = await dbHelper.getAllArockInfo();

    lstArockInfo.sort((a, b) => (b.id as num).compareTo(a.id as num));
    setState(() {});
  }


}
