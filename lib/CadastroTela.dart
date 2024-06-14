// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app_aline/TelaMusica.dart';

class User{
  //string para nome -> valida nome como tipo de dados string
  final String username;
  //string para senha -> valida senha como tipo de dados string
  final String usersenha;
  //string para email -> valida email como tipo de dados string
  final String useremail;
  //falando que a const class User, recebe os parâmetros próprios apenas declarados nessa classe
  const User(this.username, this.usersenha, this.useremail);
}
// criando uma classe do widget CadastroTela. instânciando estado
class CadastroTela extends StatefulWidget{
  const CadastroTela({super.key});

// cria estado
  @override
  State<CadastroTela> createState() => _CadastroTela();
}

class _CadastroTela extends State<CadastroTela> {

  String nome = '';
  String senha = '';
  String email = '';

  /*pelo que entendi estou chamando o super-método override e criando uma função de estado estático?
  R: gerencia estado inicial
  */
  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //definindo título do app
          title: const Text('Cadastre-se', style: TextStyle(color: Colors.white),),
          //usando class centerTitle para centralizar texto
          centerTitle: true,
          //mudando cor do background
          backgroundColor: const Color.fromARGB(255, 53, 15, 83),
          //adicionar botões de ação antes do título
          leading:
          IconButton(icon: const Icon(Icons.arrow_back,color: Colors.white),
            onPressed: () {
              //icone para voltar a tela anterior
              Navigator.pop(context);
            },),         
          //buttons de actions
        ),
        body: Center(
        child: Column(
          //Alinha no centro da página - vertical - , 
          //com distribuição uniforme
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //text pedindo para digitar info
            const Text('Digite suas informações abaixo para acessar a tela de músicas', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Digite o nome',
                labelText: 'Nome',
                border: OutlineInputBorder(),
              ),
              //estilo do teclado ao digitar
               keyboardType: TextInputType.name,
                   inputFormatters: <TextInputFormatter>[
                       FilteringTextInputFormatter.singleLineFormatter
                    ],
                 //associa o valor do campo à variável
                 onChanged: (value) {
                            nome = value;
                          },),

                           //text pedindo para digitar info
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Digite o senha',
                labelText: 'Senha',
                border: OutlineInputBorder(),
              ),
              //estilo do teclado ao digitar
               keyboardType: TextInputType.visiblePassword,
                   inputFormatters: <TextInputFormatter>[
                       FilteringTextInputFormatter.singleLineFormatter
                    ],
                 //associa o valor do campo à variável
                 onChanged: (value) {
                            senha = value;
                          },),

               //text pedindo para digitar inf
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Digite o email',
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              //estilo do teclado ao digitar
               keyboardType: TextInputType.emailAddress,
                   inputFormatters: <TextInputFormatter>[
                       FilteringTextInputFormatter.singleLineFormatter
                    ],
                 //associa o valor do campo à variável
                 onChanged: (value) {
                            email = value;
                          },),

              ElevatedButton(onPressed:(){
            User u =  User(nome, senha, email);
             Navigator.push(
                    context,
                    MaterialPageRoute(builder:
                       (context) => const TelaMusica(),
                       //adiciona os parametros 
                       settings: RouteSettings(
                    arguments: u,
                  ),),
                        
                         );
          }, //botão irá enviar para página dois
          child: const Text('Enviar')),
          ],
        ),
        ),
      ),
    );
  }
}