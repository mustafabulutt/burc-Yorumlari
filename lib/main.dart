import 'package:burcrehberi/burcDetay.dart';
import 'package:burcrehberi/burcListe.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: "/",
      routes: {
        "/": (context)=>burcListe(),
        "/burcListe":(context)=>burcListe(),
      },
      onGenerateRoute:(RouteSettings settings)
      {
        List<String>pathElemanlari = settings.name.split("/");
        if(pathElemanlari[1] == 'burcDetay'){
          return MaterialPageRoute(builder: (context)=>burcdetay(int.parse(pathElemanlari[2])));

        }

        return null;
      } ,
      title: "Burç Rehberi",
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
     // home: burcListe(),
    );

  }

}