import 'package:flutter/material.dart';
import '../models/email.dart';
import 'emailDetailsScreen.dart'; // Import EmailDetailsScreen

class ListViewScreen extends StatelessWidget {
  final String userEmail;

  const ListViewScreen({super.key, required this.userEmail});

  @override
  Widget build(BuildContext context) {
    // Filter emails received by the current user
    final userEmails =
        emailList.where((email) => email.receiverEmail == userEmail).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Emails'),
      ),
      body: userEmails.isEmpty
          ? const Center(
              child: Text('No emails found for this user.'),
            )
          : ListView.builder(
              itemCount: userEmails.length,
              itemBuilder: (context, index) {
                final email = userEmails[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(
                        email.senderName[0]), // First letter of sender's name
                  ),
                  title: Text(email.subject),
                  subtitle: Text(email.senderName),
                  trailing: Text(email.sentDate),
                  onTap: () {
                    // Navigate to EmailDetailsScreen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EmailDetailsScreen(email: email),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}
