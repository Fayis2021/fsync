import 'package:flutter/material.dart';

import 'pages/key_view_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: KeyViewScreen());
  }
}
