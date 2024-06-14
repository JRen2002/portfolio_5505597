import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mein Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        '/home': (context) => HomePage(),
        '/about': (context) => AboutPage(),
        '/resume': (context) => ResumePage(),
        '/skills': (context) => SkillsPage(),
        '/projects': (context) => ProjectsPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startseite'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Navigation'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Startseite'),
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              title: Text('Über mich'),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            ListTile(
              title: Text('Lebenslauf'),
              onTap: () {
                Navigator.pushNamed(context, '/resume');
              },
            ),
            ListTile(
              title: Text('Fähigkeiten'),
              onTap: () {
                Navigator.pushNamed(context, '/skills');
              },
            ),
            ListTile(
              title: Text('Projekte'),
              onTap: () {
                Navigator.pushNamed(context, '/projects');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Willkommen auf meiner Startseite!'),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Über mich'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Card(
              child: ListTile(
                title: Text('Persönliche Informationen'),
                subtitle: Text('Mein Name ist Jonas Renner und bin 22 Jahre alt'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Interessen'),
                subtitle: Text('Fußball'),
              ),
            ),
            // Weitere Cards für andere Informationen hinzufügen
          ],
        ),
      ),
    );
  }
}

class ResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lebenslauf'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Card(
              child: ListTile(
                title: Text('Ausbildung'),
                subtitle: Text('Abitur 2023 auf der Johann-Philipp-Reis-Schule'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Berufliche Erfahrungen'),
                subtitle: Text('Seit 2020 Aushilfe in einer Arztpraxis'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Wichtige Projekte'),
                subtitle: Text('Keine Angabe'),
              ),
            ),
            // Weitere Cards für andere Abschnitte hinzufügen
          ],
        ),
      ),
    );
  }
}

class SkillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fähigkeiten'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Card(
              child: ListTile(
                title: Text('Programmiersprachen'),
                subtitle: Text('C#, Java'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Tools'),
                subtitle: Text('Microsoft 365, Adobe Photoshop'),
              ),
            ),
            // Weitere Cards für andere Fähigkeiten hinzufügen
          ],
        ),
      ),
    );
  }
}

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projekte'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Card(
              child: ListTile(
                title: Text('Flappybird'),
                subtitle: Text('Ein einfaches Flappybird Spiel mit extra Modifizierungen in Windows Forms mit C#'),
              ),
            ),
            // Weitere Cards für andere Projekte hinzufügen
          ],
        ),
      ),
    );
  }
}
