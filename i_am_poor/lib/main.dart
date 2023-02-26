import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Center(child: Text('I am POOR')),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: const Center(
        child: Image(
          image: NetworkImage(
              'https://media.gettyimages.com/id/524903696/photo/poor-indian-children-asking-for-food-india.jpg?s=612x612&w=gi&k=20&c=5gKcPEdMY593eXifL3QVLgOytXFq460QTKwmC2Rg_xA='),
        ),
      ),
    ),
  ));
}
