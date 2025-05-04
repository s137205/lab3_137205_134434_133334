import 'package:flutter/material.dart';
import 'listViewScreen.dart';
import 'gridViewScreen.dart';
import 'logIn.dart';

class mainScreen extends StatelessWidget {
  final String userEmail;
  final String userName;

  const mainScreen({required this.userEmail, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'background.jpeg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            bottom: 10.0,
            left: 10.0,
            child: CircleAvatar(
              radius: 48.0,
              backgroundImage: AssetImage('oman.jpg'),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('ListView'),
                    CircleAvatar(
                      radius: 40,
                      child: IconButton(
                        icon: Icon(Icons.list, color: Colors.white),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ListViewScreen(
                                  userEmail:
                                      "yaseen@example.com"), // Pass Yaseen's email
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('GridView'),
                    CircleAvatar(
                      radius: 40,
                      child: IconButton(
                        icon: Icon(Icons.grid_view, color: Colors.white),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const GridViewScreen(), // Navigate to GridViewScreen
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Log out'),
                    CircleAvatar(
                      radius: 40,
                      child: IconButton(
                        icon: Icon(Icons.logout, color: Colors.white),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                            (route) => false,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
