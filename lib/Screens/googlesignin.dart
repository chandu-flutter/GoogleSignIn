import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignIn {
  final auth = FirebaseAuth.instance;
  final googleSignIn = GoogleSignIn();

  signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      if (googleSignInAccount != null) {
        GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        final AuthCredential authCredential =
            await GoogleAuthProvider.credential(
                accessToken: googleSignInAuthentication.accessToken,
                idToken: googleSignInAuthentication.idToken);
        await auth.signInWithCredential(authCredential);
      }
    } on FirebaseException catch (e) {
      print(e.toString());
    }
  }

  gooleSignOut() async {
    await googleSignIn.signOut();
  }
}
