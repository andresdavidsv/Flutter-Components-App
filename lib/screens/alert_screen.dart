import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        // barrierDismissible: true,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Title'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Content Alert'),
                SizedBox(height: 10),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Ok'))
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        // barrierDismissible: true,
        context: context,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 5,
            title: const Text('Title'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Content Alert'),
                SizedBox(height: 10),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancelar')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Ok')),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        child: const Padding(
          padding: EdgeInsets.all(20),
          child: Text('Mostrar alerta', style: TextStyle(fontSize: 16)),
        ),
        onPressed: () => {
          Platform.isAndroid
              ? displayDialogAndroid(context)
              : displayDialogIOS(context)
        },
      )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
