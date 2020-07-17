import 'package:flutter/material.dart';
import 'package:demo/providers/countries.dart';
import 'package:demo/providers/phone_auth.dart';
import 'package:provider/provider.dart';

import 'firebase/auth/phone_auth/login_Page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CountryProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PhoneAuthDataProvider(),
        ),
      ],
      child: MaterialApp(
        home: LoginPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
