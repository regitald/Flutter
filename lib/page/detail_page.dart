import 'package:flutter/material.dart';
import 'package:iconstore/style/color.dart';
import 'package:iconstore/json/data_json.dart';

class DetailPage extends StatefulWidget {
  final String imgDetail;
  final String title;

  const DetailPage({Key? key, required this.imgDetail, required this.title})
      : super(key: key);

  @override
  _CourseDetailPageState createState() => _CourseDetailPageState();
}

class _CourseDetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomSheet: getFooter(),
    );
  }

  Widget getFooter() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 100,
      decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
                color: black.withOpacity(0.05), spreadRadius: 5, blurRadius: 10)
          ]),
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 15),
        child: Row(
          children: <Widget>[
            Container(
              width: 70,
              height: 50,
              decoration: BoxDecoration(
                  color: redLight, borderRadius: BorderRadius.circular(30)),
              child: Center(child: Icon(Icons.add_shopping_cart, color: black)),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
                child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: primary),
              child: Center(
                child: Text(
                  "Beli Sekarang",
                  style: TextStyle(
                      color: white, fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Positioned.fill(
                bottom: 260,
                child: Container(
                  height: size.height * 0.45,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.imgDetail),
                          fit: BoxFit.cover)),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(Icons.arrow_back_ios, color: black),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                          IconButton(
                              icon: Icon(Icons.more_vert, color: black),
                              onPressed: () {})
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: yellow,
                              ),
                              child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    "POPULER",
                                  ))),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            widget.title,
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(Icons.supervised_user_circle),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: Text("Terjual 18k"),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.star),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: Text("4.8"),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "\Rp. 10000",
                                style: TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "\Rp. 15000",
                                style: TextStyle(
                                    fontSize: 18,
                                    decoration: TextDecoration.lineThrough),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: size.height * 0.40),
                height: size.height * 0.6,
                width: size.width,
                decoration: const BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Course Content",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Column(
                          children: List.generate(icon_content.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                icon_content[index]['id'],
                                style: TextStyle(
                                    fontSize: 30,
                                    color: black.withOpacity(0.3)),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    icon_content[index]['price'],
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: black.withOpacity(0.5),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    icon_content[index]['title'],
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                    color: icon_content[index]['available']
                                        ? green
                                        : green.withOpacity(0.4),
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Icon(Icons.add, color: black),
                                ),
                              )
                            ],
                          ),
                        );
                      }))
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
