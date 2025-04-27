import 'package:flutter/material.dart';
import 'package:myapp_travelgo/screens/chatbot_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Centrer le contenu
        children: [
          Text(
            "Hello From Home Page",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20), // espace entre les éléments
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatbotPage()),
              );
            },
            child: Text("Ouvrir le Chatbot 🤖"),
          ),
        ],
      ),
    );
  }
}
