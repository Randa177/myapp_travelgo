import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        centerTitle: true, // Centre le titre de l'AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Centre le contenu
          children: [
            CircleAvatar(
              radius: 60, // Taille de la photo de profil
              backgroundImage: NetworkImage(
                'https://example.com/photo.jpg',
              ), // Remplace par l'URL de la photo de profil
            ),
            SizedBox(height: 20),
            Text(
              'Nom d\'utilisateur', // Remplace par le nom de l'utilisateur
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Utilisateur', // Remplace par une description ou d'autres informations
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Action pour modifier le profil
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('Modifier le profil')));
              },
              child: Text('Modifier Profil'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Action pour se déconnecter
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('Déconnexion')));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.red, // Utilise backgroundColor au lieu de primary
              ),
              child: Text('Se Déconnecter'),
            ),
          ],
        ),
      ),
    );
  }
}
