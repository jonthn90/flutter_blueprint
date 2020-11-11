import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Rx<User> _firebaseUser = Rx<User>();

  User get user => _firebaseUser.value;

  @override
  void onInit() {
    _firebaseUser.bindStream(_auth.authStateChanges());
  }

  void createUser(String email, String password) async {
    /*
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      Get.back();
    } catch (e) {
      Get.snackbar("Error creating account", e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
     */

    await _auth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      Get.back();
    }).catchError((onError) => Get.snackbar(
            "Error creating account", onError.message,
            snackPosition: SnackPosition.BOTTOM));
  }

  void login(String email, String password) async {
    /*
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar("Error logging in", e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
     */

    await _auth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) => null)
        .catchError((onError) => Get.snackbar(
            "Error logging in", onError.message,
            snackPosition: SnackPosition.BOTTOM));
  }

  void logout() async {
    /*
    try {
      await _auth.signOut();
    } catch (e) {
      Get.snackbar("Error signing out", e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
     */

    await _auth.signOut().then((value) => null).catchError((onError) =>
        Get.snackbar("Error signing out", onError.message,
            snackPosition: SnackPosition.BOTTOM));
  }
}
