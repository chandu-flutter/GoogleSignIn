import 'package:flutter/material.dart';
import 'package:googlesignin/Screens/googlesignin.dart';
import 'package:googlesignin/Screens/home.dart';

class Success extends StatefulWidget {
  const Success({super.key});

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: const Text("Success"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "You have Successfully logged in",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  await SignIn().gooleSignOut();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
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
                    const Text("SignOut"),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
