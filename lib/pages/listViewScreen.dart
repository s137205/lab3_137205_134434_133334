import 'package:flutter/material.dart';
import '../models/email.dart';

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
                    // Show email details in a dialog
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text(email.subject),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sender Email: ${email.senderEmail}'),
                            Text('Sent Date: ${email.sentDate}'),
                            const SizedBox(height: 8),
                            Text('Details: ${email.details}'),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Close'),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}
