// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/rendering.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
// import to widget EntrarApp in outher file dart
import 'package:app_aline/EntrarApp.dart';
// import to widget CadastroTela in outher file dart
import 'package:app_aline/CadastroTela.dart';



void main() {
  runApp(const MaterialApp (title: "PARÇAS URBANOS",
      home: MainApp(),
      ));
}
//classe da tela, sendo ela um statelessWidget (sem estado, estático)
class MainApp extends StatelessWidget {
  const MainApp({super.key});

//tela de início construtor WIDGETTELA
  @override
    Widget build(BuildContext context) {
    return MaterialApp(
      //usando o widget class home, sendo o padrão
      home: Scaffold(
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
               const Image(image: AssetImage('assets/hip-hop img.png'), width: 220,),
                const Text('Parças Urbanos', style: TextStyle(backgroundColor:Colors.black, color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w100),),
                
                /// primeiro button leva aos widget Entrar
                ElevatedButton(
                  onPressed:(){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: 
                    (context) => const EntrarApp()),
                    );
                },
                /// add cor no button, usando da class ButtonStyle
                style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),),
                child: const Text('ENTRAR', style: TextStyle(color: Colors.white),)),
                
                /// segundo button, leva ao widget Músicas
                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: 
                    (context) => const CadastroTela())
                  );
                },
                style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),),
                child: const Text('MÚSICAS', style: TextStyle(color: Colors.white),)),
            ],
            ),
            ),
          ),
  );
  }
}