import 'package:flutter/material.dart';
import 'package:hello_flutter/models/catalogue.dart';
import 'package:hello_flutter/widgets/drawer.dart';

import '../widgets/itemwidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      body: ListView.builder(
        itemCount: CatalogueItems.items.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: CatalogueItems.items[index]);
        },
      ),
      drawer: AppDrawer(),
    );
  }
}
