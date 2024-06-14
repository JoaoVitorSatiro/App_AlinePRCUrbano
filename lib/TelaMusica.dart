// ignore_for_file: file_names
import 'package:flutter/material.dart';

void main() {
  runApp(const TelaMusica());
}

class TelaMusica extends StatelessWidget {
  const TelaMusica({super.key});

  @override
Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
         title: const Text(
            'Músicas',
            style: TextStyle(color: Colors.white),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back,color: Colors.white),
            onPressed: () {
              //icone para voltar a tela anterior
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Músicas de Hip-Hop',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 82, 64),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Anos 2000',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color.fromARGB(255, 0, 82, 64),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Link de navegação para o YouTube
                      _launchURL('https://www.youtube.com/watch?v=HvC96EaQDmU');
                    },
                    child: Container(
                      width: 150,
                      height: 250,
                      color: const Color.fromARGB(255, 98, 15, 112),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/ice2.jpg', width: 100, height: 100),
                          const SizedBox(height: 8.0),
                          const Text(
                            'you know how we do it',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 82, 64),
                            ),
                          ),
                          const Text(
                            'Ice Cube',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 82, 64),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Link de navegação para o YouTube
                      _launchURL('https://www.youtube.com/watch?v=h4UqMyldS7Q');
                    },
                    child: Container(
                      width: 150,
                      height: 250,
                      color: const Color.fromARGB(255, 98, 15, 112),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/ice1.jpg', width: 100, height: 100),
                          const SizedBox(height: 8.0),
                          const Text(
                            'it was a good day',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 82, 64),
                            ),
                          ),
                          const Text(
                            'Ice Cube',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 82, 64),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Destaques',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 82, 64),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Hip-Hop',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color.fromARGB(255, 0, 82, 64),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Link de navegação para o YouTube
                      _launchURL('h1ttps://www.youtube.com/watch?v=5gLoEBbZNis');
                    },
                    child: Container(
                      width: 150,
                      height: 250,
                      color: const Color.fromARGB(255, 98, 15, 112),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/2pac1.jpg', width: 100, height: 100),
                          const SizedBox(height: 8.0),
                          const Text(
                            'Only God Can Judge Me',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 82, 64),
                            ),
                          ),
                          const Text(
                            '2Pac',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 82, 64),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Link de navegação para o YouTube
                     _launchURL('https://www.youtube.com/watch?v=Do5MMmEygsY');
                    },
                    
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/2pac2.png', width: 100, height: 100),
                          const SizedBox(height: 8.0),
                          const Text(
                            'Ghetto Gospel',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 82, 64),
                            ),
                          ),
                          const Text(
                            '2Pac',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 82, 64),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ],
        ),
      ),
      ),
    );
  }
}

// Função para abrir o URL no navegador padrão
void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

launch(String url) {
}

canLaunch(String url) {
}