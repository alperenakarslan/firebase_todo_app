
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentUserProvider =
    Provider((ref) => FirebaseAuth.instance.currentUser);

final loginUserProvider =
    Provider.family.autoDispose((ref, List<String> list) async {
  final credential = EmailAuthProvider.credential(
    email: list.first,
    password: list.last,
  );
  await FirebaseAuth.instance.signInWithCredential(credential);
  return FirebaseAuth.instance.currentUser;
  // UserCredential? userCredential;
  // try {
  //   userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
  //     email: list[0],
  //     password: list[1],
  //   );
  // } on FirebaseAuthException catch (e) {
  //   log(e.toString());
  // ErrorHandler().authErrorHandler(e.code);
}

        // return userCredential;
        );

final registerUserProvider = Provider.family.autoDispose(
  (ref, List<String> list) async {
    final credential = EmailAuthProvider.credential(
      email: list.first,
      password: list.last,
    );
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: list.first,
      password: list.last,
    );
    await FirebaseAuth.instance.signInWithCredential(credential);
    return FirebaseAuth.instance.currentUser;
  },
);
