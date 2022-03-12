import 'package:controllers/view/signin.dart';
import 'package:controllers/view/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
final User? user = auth.currentUser;
class HomePage extends StatefulWidget {
  String userID;
  HomePage({Key? key, required this.userID}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  "images/Feathers on Black Background on Canvas Print Painting Nordic _ Etsy.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.black,
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                tooltip: "Search",
                onPressed: () {},
              ),
              PopupMenuButton<String>(
                tooltip: "More Options",
                color: Colors.black,
                onSelected: (value) {
                  print(value);
                },
                itemBuilder: (BuildContext context) {
                  return [
                    const PopupMenuItem(
                      child: Text(
                        "New group",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const PopupMenuItem(
                      child: Text(
                        "New broadcast",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const PopupMenuItem(
                      child: Text(
                        "Settings",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    PopupMenuItem(
                      child: const Text(
                        "Log out",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        auth.signOut();
                        Navigator.pop(context);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (_) => const SigninPage(),
                        //   ),
                        // );
                      },
                    ),
                  ];
                },
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
