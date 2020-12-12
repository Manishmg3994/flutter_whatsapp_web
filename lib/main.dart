import 'package:flutter/material.dart';
import 'package:my_app/whatsapp_mobile.dart';
import 'package:my_app/whatsapp_web.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        iconTheme: IconThemeData(
          color: Colors.white30,
        ),
      ),
      home: Scaffold(
        body: Wrapper(),
      ),
    );
  }
}

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    if (width < 600) {
      // Mobile
      return WhatsappMobile();
    } else if (width < 1200) {
      // Tablets & Small laptops
      return WhatsappWeb(isMedium: true);
    }
    // Large desktops
    return WhatsappWeb();
  }
}
