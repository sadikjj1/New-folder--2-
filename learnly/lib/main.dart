import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:learnly/home.dart';

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
          backgroundColor: Colors.greenAccent,
          title: Center(child: Text("Learning Lab 6")),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text("Recent"),
                leading: Icon(Icons.alarm),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Hello World"),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text("Image"),
                leading: Icon(Icons.image),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Hello Image "),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text("Video"),
                leading: Icon(Icons.movie),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Hello Ripon Video"),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text("Sd Card"),
                leading: Icon(Icons.sd_card),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.eject),
                ),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Open SD-card"),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        body: Home(),
      ),
    );
  }
}
