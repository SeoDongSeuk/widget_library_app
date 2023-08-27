import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_library_app/pages/list_view/dto_tenping_data.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ListViewBuilderApp extends StatefulWidget {
  const ListViewBuilderApp({super.key});

  @override
  State<ListViewBuilderApp> createState() => _ListViewBuilderAppState();
}

class _ListViewBuilderAppState extends State<ListViewBuilderApp> {
  var tenpingUri =
      "http://tenping.kr/adbox/list?MemberID=jHyhVTbomtJpJAihOcAt13hRhjDEKHWTknCzHBM7NMAKkyVMQ6z4IZccaxhZNjtG&PageSize=30&CampaignType=0&MinClickPoint=0&MinCurrentPoint=50&ExistMiddleImage=&ExistRectangleImage=&IsPartner=";

  Map<String, dynamic> data = {};
  List listData = [];
  List<TenpingListData> tenpingListData = [];

  Future<String> getData() async {
    var response = await http
        .get(Uri.parse(tenpingUri), headers: {"Accept": "application/json"});

    setState(() {
      data = (json.decode(response.body));
    });

    listData = data["List"];

    tenpingListData = listData
        .map(
          (element) => TenpingListData.fromJson(element),
        )
        .toList();

    return "Success!";
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listviews"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: tenpingListData.isEmpty ? 0 : listData.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: GestureDetector(
              child: Column(
                children: [
                  Row(
                    children: [
                      Image(
                        image:
                            //NetworkImage(listData[index]["SImage"].toString()),
                            NetworkImage(
                                tenpingListData[index].sImage.toString()),
                        width: 100,
                        height: 100,
                        fit: BoxFit.fill,
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            //width: (MediaQuery.of(context).size.width) - 20,
                            width: 260,
                            child: Text(
                              tenpingListData[index].contentTitle.toString(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              onTap: () async {
                final url = Uri.parse(
                  tenpingListData[index].link.toString(),
                  //'http://m.naver.com',
                );
                if (await canLaunchUrl(url)) {
                  launchUrl(url);
                } else {}
              },
            ),
          );
        },
      ),
    );
  }
}
