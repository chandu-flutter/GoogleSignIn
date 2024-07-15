import 'package:flutter/material.dart';
import 'package:googlesignin/Screens/googlesignin.dart';
import 'package:googlesignin/Screens/success.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: const Text("Google Sign In"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Center(
              child: ElevatedButton(
                  onPressed: () async {
                    await SignIn().signInWithGoogle();
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Success()));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 50),
                    maximumSize: const Size(200, 50),
                  ),
                  child: Row(
                    children: [
                      Image.network(
                        "https://cdn4.iconfinder.com/data/icons/logos-brands-7/512/google_logo-google_icongoogle-512.png",
                        width: 34,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text("Google SignIn"),
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
