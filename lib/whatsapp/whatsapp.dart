import 'package:flutter/material.dart';

import 'pages/calls_screen.dart';
import 'pages/camera_screen.dart';
import 'pages/chat_screen.dart';
import 'pages/status_screen.dart';

class WhatsAppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Examples",
      theme: ThemeData(
          primaryColor: Color(0xff075E54), accentColor: new Color(0xff25D366)),
      home: new Whatsapp(),
    );
  }
}

class Whatsapp extends StatefulWidget {
  Whatsapp({Key key}) : super(key: key);

  _WhatsappState createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return buildHomeScaffold(context);
  }

  Scaffold buildHomeScaffold(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
      floatingActionButton: buildFloatingActionButton(context),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        title: Text("WhatsApp"),
        elevation: 0.7,
        bottom: appBarBottom(),
        actions: <Widget>[
          new Icon(
            Icons.search,
          ),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
          ),
          new Icon(Icons.menu),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
          ),
        ]);
  }

  FloatingActionButton buildFloatingActionButton(BuildContext context) {
    return new FloatingActionButton(
      backgroundColor: Theme.of(context).accentColor,
      child: new Icon(
        Icons.message,
        color: Colors.white,
      ),
      onPressed: () => print("open chats"),
    );
  }

  TabBarView buildBody() {
    return new TabBarView(
      controller: _tabController,
      children: <Widget>[
        new CameraScreen(),
        new ChatScreen(),
        new StatusScreen(),
        new CallsScreen()
      ],
    );
  }

  TabBar appBarBottom() {
    return new TabBar(
      controller: _tabController,
      indicatorColor: Colors.white,
      tabs: <Widget>[
        new Tab(
          icon: new Icon(Icons.camera_alt),
        ),
        new Tab(
          text: "CHATS",
        ),
        new Tab(
          text: "STATUS",
        ),
        new Tab(
          text: "CALLS",
        ),
      ],
    );
  }
}
