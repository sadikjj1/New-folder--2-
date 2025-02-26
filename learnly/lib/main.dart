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
        body: SingleChildScrollView(
          child: Column(
            children: [
              CachedNetworkImage(
                imageUrl:
                    "https://www.nbc.com/sites/nbcblog/files/styles/scale_600/public/2024/03/kung-fu-panda-4-1.jpg",
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
