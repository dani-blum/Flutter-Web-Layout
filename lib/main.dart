import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("App Flutter"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Banner Responsivo
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.pink, Colors.pinkAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Text(
                "Bem-vindo ao App Flutter",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: screenWidth < 600 ? 24 : 30, // Ajusta o tamanho do texto
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Botão Responsivo
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  // Funcionalidade ao pressionar o botão
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Botão Pressionado"),
                      content: const Text("Você pressionou o botão!"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                ),
                child: Text(
                  "Pressione-me",
                  style: TextStyle(color: Colors.white, fontSize: screenWidth < 600 ? 16 : 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}








