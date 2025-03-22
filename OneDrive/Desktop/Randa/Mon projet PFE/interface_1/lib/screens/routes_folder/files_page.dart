import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilePage extends StatelessWidget {
  const FilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Files",
        style: GoogleFonts.permanentMarker(),
        ),
         ),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/beautiful-tropical-beach.jpg"),
          fit: BoxFit.cover,
            ), 
          ),
          child: Column(children: [
            Text("Hello From Files Page",
            style:GoogleFonts.permanentMarker(
              fontSize: 20,color: Colors.black,
              fontWeight:FontWeight.bold, 
            ),
              ),
          ],),
        ),
      ),
    );
  }
}
