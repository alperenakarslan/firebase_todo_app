import 'package:firebase_todo_app/provider/firebase_auth_provider.dart';
import 'package:firebase_todo_app/views/home_view.dart';
import 'package:firebase_todo_app/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock_exports.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});

  @override
  ConsumerState<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> {
  void _init() {
    Future.delayed(
      500.milliseconds,
      () {
        final user = ref.read(currentUserProvider);
        if (user != null) {
          Grock.toRemove(
            const HomeView(),
          );
        } else {
          Grock.toRemove(
            const LoginView(),
          );
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
