import 'package:controllers/view/signin.dart';
import 'package:controllers/view/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            // leading: IconButton(
            //   icon: const Icon(
            //     Icons.arrow_back,
            //     color: Colors.white,
            //   ),
            //   tooltip: " Back",
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (_) => const LoginPages(),
            //       ),
            //     );
            //   },
            // ),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const SigninPage(),
                          ),
                        );
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
