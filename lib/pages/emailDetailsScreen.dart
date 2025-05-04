import 'package:flutter/material.dart';
import '../models/email.dart';

class EmailDetailsScreen extends StatelessWidget {
  final Email email;

  const EmailDetailsScreen({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(email.subject),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'From: ${email.senderName}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Email: ${email.senderEmail}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              'Sent Date: ${email.sentDate}',
              style: const TextStyle(fontSize: 16),
            ),
            const Divider(height: 20, thickness: 1),
            Text(
              email.details,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
