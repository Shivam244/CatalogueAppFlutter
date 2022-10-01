import 'package:flutter/material.dart';
import 'package:hello_flutter/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bringVegitables(thella: true);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.indigo),
        title: const Text(
          "Catalogue App",
          style: TextStyle(color: Colors.indigo),
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Container(child: Text("Welcome to flutter app")),
      ),
      drawer: AppDrawer(),
    );
  }

  bringVegitables({required bool thella, int rupees = 10}) {}
}
