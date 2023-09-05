import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentUserProvider =
    Provider((ref) => FirebaseAuth.instance.currentUser);

final signOutProvider = Provider(
  (ref) async => await FirebaseAuth.instance.signOut(),
);

final loginUserProvider = Provider.family.autoDispose(
  (ref, List<String> list) async {
    final credential = EmailAuthProvider.credential(
      email: list.first,
      password: list.last,
    );
    await FirebaseAuth.instance.signInWithCredential(credential);
    return FirebaseAuth.instance.currentUser;
  },
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
