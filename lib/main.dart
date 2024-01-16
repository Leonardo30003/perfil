import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfil de Usuario ',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil de Usuario'),
        elevation: 0,
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          _buildProfileHeader(context),
          _buildProfileDetails(context),
          _buildAdditionalInfo(context),
        ],
      ),
    );
  }

  Widget _buildProfileHeader(BuildContext context) {
    double imageSize = MediaQuery.of(context).size.width / 3;
    return Container(
      color: Colors.teal,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            width: imageSize,
            height: imageSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://scontent.floh1-1.fna.fbcdn.net/v/t1.6435-9/126095901_2797209133933504_2403709927615253723_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=dd63ad&_nc_ohc=B9MvjyY9MMUAX8KISwV&_nc_ht=scontent.floh1-1.fna&oh=00_AfD2PToGt7RkAU4Qrr7GdJAqcVYRUeWSy-sZrs-StJlvZg&oe=65CD76C0'),
              ),
              border: Border.all(
                color: Colors.white,
                width: 4,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Leonardo Carrion',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            'lecarrionca@uide.edu.ec.com',
            style: TextStyle(fontSize: 18, color: Colors.white70),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileDetails(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Sobre mí',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Actualmente soy progrmador Jr',
            style: TextStyle(fontSize: 16),
          ),
          // Más detalles del perfil...
        ],
      ),
    );
  }

  Widget _buildAdditionalInfo(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Información Adicional',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Puedes encontrarme en Instagram como leonardo_3003',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
