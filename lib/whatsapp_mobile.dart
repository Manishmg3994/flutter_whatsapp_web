import 'package:flutter/material.dart';

class WhatsappMobile extends StatelessWidget {
  final _tabs = <Tab>[
    const Tab(icon: Icon(Icons.camera_alt)),
    const Tab(text: 'Chats'),
    const Tab(text: 'Calls'),
    const Tab(text: 'Status'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp Business'),
          centerTitle: false,
          backgroundColor: Color(0xFF4b5d67),
          bottom: TabBar(tabs: _tabs),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Camera')),
            Center(child: Text('Chats')),
            Center(child: Text('Calls')),
            Center(child: Text('Status')),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xFF06A790),
          child: Icon(Icons.chat, color: Colors.white),
        ),
      ),
    );
  }
}
