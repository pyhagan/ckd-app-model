import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'authentication.dart';
//import './home_Screen.dart';
import './splash.dart';
//import './login.dart';
//import './signup.dart';
//import 'package:supabase_flutter/supabase_flutter.dart';

// Main function to initialize the app
Future<void> main () async {
 
 WidgetsFlutterBinding.ensureInitialized();
 try{
  await Firebase.initializeApp();
  print('Firebase initialized successfully');
  } catch (e) {
    print('Firebase initialization failed: $e');
  }
  runApp(MyApp());
}

//void main() +> runApp(MyApp));

//supabase variable
//final supabase = Supabase.instance.client;
 


// Define the main application widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
     home: SplashScreen()


      /*initialRoute: '/',
      routes: {
       '/':(context) => const SplashPage(),
       '/login': (context) => const LoginPage(),
       '/account': (context) =>HomeScreen(),
      },*/
    );
  }
}
  