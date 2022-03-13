import 'package:universal_todo/constants/route_paths.dart' as routes;
import 'package:universal_todo/provider/basemodel.dart';
import 'package:universal_todo/router.dart' as router;

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  // setupLocator();
  runApp( const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: FlexColorScheme.light(scheme: FlexScheme.redWine).toTheme,
      onGenerateRoute: router.generateRoute,
      initialRoute: routes.LoginRoute,
    );
  }
}
