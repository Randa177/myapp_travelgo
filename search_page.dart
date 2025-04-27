import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // Contrôleur pour le champ de texte
  TextEditingController _searchController = TextEditingController();

  // Variable pour stocker le texte de la recherche
  String _searchResult = '';

  // Fonction de recherche (pour simuler la recherche)
  void _search() {
    setState(() {
      _searchResult = 'Résultat de la recherche : ${_searchController.text}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recherche'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Entrez un terme pour la recherche :',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            // Champ de texte pour entrer la recherche
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Ex. Recherche d\'un produit',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed:
                      _search, // Lance la recherche lorsque l'icône est cliquée
                ),
              ),
            ),
            SizedBox(height: 20),
            // Affiche le résultat de la recherche
            Text(
              _searchResult,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
