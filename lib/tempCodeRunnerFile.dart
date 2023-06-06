import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  final String profilePictureURL =
      "https://pbs.twimg.com/profile_images/1664974113306464256/7u3axgeM_400x400.jpg";
  final String profileName = 'Selviana Wulandari';
  final String profileTitle = 'Informatics Engineering Student';
  final String profileNIM = "220211060044";
  final String profileDescription =
      "Elek-Elik 22 ⚡\n\nMahasiswa Semester 2\nJurusan Elektro\nProgram Studi Informatika\nUniversitas Sam Ratulangi\n\n#VIVAELEKTRO ❤️‍🩹";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Selvi's Flutter App",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 75,
                backgroundImage: NetworkImage(profilePictureURL),
              ),
              SizedBox(height: 16),
              Text(
                profileName,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8),
              Text(
                profileTitle,
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8),
              Text(
                profileNIM,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  profileDescription,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
