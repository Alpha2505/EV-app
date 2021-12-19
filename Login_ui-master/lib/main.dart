import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login_ui/pages/station.dart';
import 'package:page_transition/page_transition.dart';
import 'pages/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ProviderScope(child: LoginUiApp()));

}

class LoginUiApp extends StatelessWidget {
  Color _primaryColor = HexColor('#26A69A');
  Color _accentColor = HexColor('#b8bfba');

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
        onGenerateRoute: (settings){
        switch (settings.name){
          case '/search':
            return PageTransition(
                settings: settings,
                child: station(),
              type: PageTransitionType.fade);
            break;
            default:

    }},
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: _accentColor,
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.grey,

      ),
      home: SplashScreen(title: 'Flutter Login UI'),
    );
  }
}

