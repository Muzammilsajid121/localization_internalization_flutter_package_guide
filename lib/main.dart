import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:localization_internalization_flutter_guide/localization/locales.dart';
import 'package:localization_internalization_flutter_guide/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   //localization
   final FlutterLocalization localization =  FlutterLocalization.instance;

   @override
   void initState (){
    configureLocalization();
    super.initState();
   }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //supported locales
      supportedLocales: localization.supportedLocales,
      localizationsDelegates: localization.localizationsDelegates,



      home: const  HomePage(),
    );
  }



  //local func
  void configureLocalization(){
    localization.init(mapLocales: LOCALES,  initLanguageCode: "en");

      localization.onTranslatedLanguage = onTranslatedLanguage;
  }


  void onTranslatedLanguage(Locale? locale){
    setState(() {
      
    });
  }





}



