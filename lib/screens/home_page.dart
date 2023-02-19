import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello_flutter/models/catalogue.dart';
import 'package:hello_flutter/widgets/drawer.dart';
import 'package:shimmer/shimmer.dart';

import '../utils/animations/delayed_animation.dart';
import '../utils/common_widgets/common_widgets.dart';
import '../widgets/itemwidget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogueJson = await rootBundle.loadString("files/catalogue.json");
    var catalogueData = jsonDecode(catalogueJson);
    var products = catalogueData["products"];
    List<Item> productList =
        List.from(products).map<Item>((e) => Item.fromMap(e)).toList();
    CatalogueItems.items = productList;
    setState(() {});
  }

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
      body: CatalogueItems.items.isNotEmpty
          ? ListView.builder(
              itemCount: CatalogueItems.items.length,
              itemBuilder: (context, index) {
                return ItemWidget(item: CatalogueItems.items[index]);
              },
            )
          :simmerWidget(context) ,
      drawer: AppDrawer(),
    );
  }
}
