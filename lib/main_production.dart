import 'package:flutter/services.dart';
import 'package:flutter_boiler/config.dart';
import 'package:flutter_boiler/routes.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

import 'locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

void main() {
  //This for the flavour
  FlavorConfig(
    name: "Dev",
    color: Colors.red,
    location: BannerLocation.topEnd,
    variables: {
      "endpointApi": Config.endpointPro,
      "endpointAuthApi": Config.endpointAuthDev,
      "endpointGraphQLUrl": Config.endpointGraphQLDev
    },
  );
  //This to inject the services
  initLocator();
  WidgetsFlutterBinding.ensureInitialized();
  //This to lock the app to potrait
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF303f9f),
        fontFamily: "Open Sans",
        textTheme: GoogleFonts.openSansTextTheme(),
        backgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          brightness: Brightness.light,
          textTheme: GoogleFonts.openSansTextTheme(),
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      //navigatorObservers: [locator<MyRouteObserver>()],
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
      enableLog: true,
      getPages: RouterR.routers(),
      //home: MainTabBar(),
    );
  }
}
