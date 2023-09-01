import 'package:firebase_todo_app/core/extansions/ui/ui_extansion.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFEEEFF5),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Todo App",
              style: TextStyle(
                color: Colors.black,
                fontSize: context.val8x,
                fontWeight: FontWeight.bold,
              ),
            ),
            CircleAvatar(
              backgroundImage: const AssetImage("asset/images/logo.png"),
              radius: context.val7x,
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(context.val24x),
          child: Padding(
            padding: context.paddingHorizontal6x,
            child: Column(
              children: [
                context.emptySizedHeightBox2x,
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    labelText: "Search",
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(context.val4x),
                    ),
                  ),
                ),
                context.emptySizedHeightBox2x,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
