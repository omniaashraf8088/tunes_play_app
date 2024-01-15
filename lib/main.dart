import 'package:flutter/material.dart';
import 'package:tunes_play_app/screens/home_page.dart';

void main(){
  runApp(TunesPlayApp());
}
class TunesPlayApp extends StatelessWidget {
  const TunesPlayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
