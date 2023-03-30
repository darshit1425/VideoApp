import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'play/play_screen.dart';
import 'screen/provider/homeprovider.dart';

import 'screen/view/home_screen.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => videoProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => Play_Screen(),
          'second': (context) => Video_Screen(),
        },
      ),
    ),
  );
}
