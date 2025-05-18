import 'package:appmelmar/screens/accueil.dart';
import 'package:appmelmar/screens/first.dart';
import 'package:appmelmar/screens/inscriptionC.dart';
import 'package:appmelmar/screens/inscriptionE.dart';
import 'package:appmelmar/screens/login.dart';
import 'package:appmelmar/screens/presence.dart';
import 'package:appmelmar/screens/espace_prive.dart';
import 'package:appmelmar/services/provider_class.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';
import 'package:intl/date_symbol_data_local.dart';

void main()async{

    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform
    );
    print('initialisation reussi');
    await initializeDateFormatting('fr_FR', null);
    runApp(
      ChangeNotifierProvider(
        create: (context) => UserProvider(),
        child: MyApp(),
      ),
    );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Application Flutter',
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        //'/':(context)=>AccueilPage(),
        '/':(context)=>FirstPage(),
        '/inscriptionClient': (context) => InscriptionClientPage(),
        '/inscriptionEmploye':(context)=> InscriptionEmployePage(),
        '/login': (context) => LoginPage(),
          '/presence':(context) => PresencePage(),
        '/espace_personnel':(context) =>EspacePersonnel(),
      }
    );
  }
}


