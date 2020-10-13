import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//Providers
import './providers/words.dart';

//Screens
import './screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Words(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MainScreen(),
        routes: {
          MainScreen.routeName: (ctx) => MainScreen(),
        },
      ),
    );
  }
}
