
import 'package:flutter/material.dart';

class snackBar extends StatefulWidget {
  const snackBar({super.key});

  @override
  State<snackBar> createState() => _snackBarState();
}

class _snackBarState extends State<snackBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Snack_Bar',
            style: TextStyle(color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          toolbarHeight: 80,
        ),
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(300, 60),
              backgroundColor: Colors.grey,
              padding: const EdgeInsets.all(16),
            ),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  behavior: SnackBarBehavior.floating,
                  content: const Text(
                    'Open SnackBar',
                    style: TextStyle(fontSize: 17),
                  ),
                  action: SnackBarAction(
                    label: 'Retry',
                    onPressed: () {},
                  ),
                ),
              );
            },
            child: const Text(
              '👉Click Here',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
