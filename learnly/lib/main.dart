import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AdvanceUI());
}

class AdvanceUI extends StatelessWidget {
  const AdvanceUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Advance UI"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.lock_clock_outlined),
                title: Text("recent"),
              )
            ],
          ),
          
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CachedNetworkImage(
                imageUrl: "http://via.placeholder.com/350x150",
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
