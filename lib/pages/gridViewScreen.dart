import 'package:flutter/material.dart';
import 'dart:math'; // Import to generate random numbers
import '../models/email.dart';
import 'emailDetailsScreen.dart'; // Ensure this is present

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Generate a random email for each grid cell
    final random = Random();
    final randomEmails = List.generate(
      12, // Number of grid cells
      (_) => emailList[random.nextInt(emailList.length)],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of columns
          crossAxisSpacing: 10, // Spacing between columns
          mainAxisSpacing: 10, // Spacing between rows
        ),
        itemCount: randomEmails.length, // Number of items in the grid
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          final email =
              randomEmails[index]; // Get the random email for this cell
          return Card(
            elevation: 4,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EmailDetailsScreen(email: email),
                  ),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.email, // Display an email icon
                    size: 40,
                    color: Colors.blue,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    email.subject, // Display the email subject
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
