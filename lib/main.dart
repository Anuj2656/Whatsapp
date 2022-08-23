
import 'package:flutter/material.dart';
import'package:whatsapp3/component/Camera.dart';
import 'package:whatsapp3/component/status.dart';
import 'package:whatsapp3/component/Calls.dart';
import 'package:whatsapp3/component/chat.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primaryColor: Color(0xff075E54),
      indicatorColor: Colors.white
    ),
      home: Whatsapp(),
    );
  }
}
class Whatsapp extends StatefulWidget {
  @override
  _WhatsappState createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> with SingleTickerProviderStateMixin {
var width;
  late TabController _tabController;

@override

void initState() {
  super.initState();
  _tabController= TabController(length: 4, vsync: this);

  List<String> imageUr1 = [
    "https//randomuser.me/api/portraits/men/86.jpg",
    "https//randomuser.me/api/portraits/women/80.jpg",
    "https//randomuser.me/api/portraits/men/43.jpg",
    "https//randomuser.me/api/portraits/women/49.jpg",
    "https//randomuser.me/api/portraits/women/45.jpg",
    "https//randomuser.me/api/portraits/women/0.jpg",
    "https//randomuser.me/api/portraits/women/1.jpg",
    "https//randomuser.me/api/portraits/men/0.jpg",
    "https//randomuser.me/api/portraits/men/86.jpg",
  ];
}

  @override
  Widget build(BuildContext context) {
    width= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          title: Text("WhatsApp"),

          actions: <Widget> [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            PopupMenuButton(itemBuilder: (BuildContext context) {
              return[
                PopupMenuItem(child: Text("New Group")),
                PopupMenuItem(child: Text("New bradcast")),
                PopupMenuItem(child: Text("WhatsApp Web")),
                PopupMenuItem(child: Text("Starred message")),
                PopupMenuItem(child: Text("Setting")),

              ];
            }
            )
          ],
        bottom: PreferredSize(child: Container(
          child: TabBar(
            tabs: [
              Container(width:30,child: Tab(icon: Icon(Icons.camera_alt),),),



              Container(
                width: width * 0.2,
                child: Row(
                  children: <Widget>[
                    Tab(text: "Status",),
                    SizedBox(width:5,),
                    Tab(
                      child: Icon(Icons.brightness_1,size: 9),
                    )
                  ],
                ),
              ),
              Container(
                width: width * 0.2,
                child: Tab(text: "Calls",),
              ),
              Expanded(
                  child: Container(
                    decoration: Box,
                  ))
            ],
            controller: _tabController,
            isScrollable: true
          ),
        ),
         preferredSize: Size.fromHeight(60.0),
      ),



      ),
      body: TabBarView(children: [
        Camera(),
        Chat(),
        Status(),
        Calls(),
      ],controller: _tabController,
      ),
    );
  }

  }


