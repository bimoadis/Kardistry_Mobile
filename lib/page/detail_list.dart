import 'package:flutter/material.dart';
import 'package:kardistry/constants.dart';

class DetailCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  DetailCard({required this.imagePath, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Constants.primaryColor.withOpacity(.8),
        title: Text(title),
      ),
      body: Card(
        child: Column(
          children: [
            Expanded(
              child: Image.asset(imagePath),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
