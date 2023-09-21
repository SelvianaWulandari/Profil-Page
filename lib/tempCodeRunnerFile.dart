import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

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
      "https://pbs.twimg.com/media/Fznp6JRX0AAWCyN?format=jpg&name=900x900";
  final String profileName = 'Selviana Wulandari';
  final String profileTitle = 'Informatics Engineering Student';
  final String profileNIM = "220211060044";
  final String profileDescription =
      "Mahasiswa di Jurusan Elektro\nProgram Studi Informatika\nUniversitas Sam Ratulangi\n\n Menuju tak terbatas dan melampauinya🚀";
  final String linkedInProfile =
      "https://www.linkedin.com/in/selviana-wulandari/";
  final String instagramProfile =
      "https://www.instagram.com/selviiiiiiiiiiii_/";
  final String backgroundImageURL =
      "https://pbs.twimg.com/media/FznLcskXgAAVTHX?format=jpg&name=medium";

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
          image: DecorationImage(
            image: NetworkImage(backgroundImageURL),
            fit: BoxFit.cover,
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
                  color: Color.fromARGB(255, 97, 141, 150),
                ),
              ),
              SizedBox(height: 8),
              Text(
                profileTitle,
                style: TextStyle(
                  fontSize: 19,
                  color: Color.fromARGB(255, 97, 141, 150),
                ),
              ),
              SizedBox(height: 8),
              Text(
                profileNIM,
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 97, 141, 150),
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
                    color: Color.fromARGB(255, 97, 141, 150),
                  ),
                ),
              ),
              SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  text: '\nLinkedIn: ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 97, 141, 150),
                  ),
                  children: [
                    TextSpan(
                      text: linkedInProfile,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 40, 88, 125),
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => _launchURL(linkedInProfile),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  text: 'Instagram: ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 97, 141, 150),
                  ),
                  children: [
                    TextSpan(
                      text: instagramProfile,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 40, 88, 125),
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => _launchURL(instagramProfile),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
