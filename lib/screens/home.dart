import 'package:flutter/material.dart';
import 'package:theme_provider/screens/settings.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0), // here the desired height
          child: AppBar(
            title: Text("Theme Provider"),
        centerTitle: true,
            // ...
          )),
      extendBody: true,
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Parth Maniar",
              style: TextStyle(
                fontSize: 22.0,
                letterSpacing: 2.0
              ),
            ),
          ],
        ),),
      floatingActionButton: Container(
        height: 56.0,
        child: Card(
//        height: 56.0,
//        decoration: BoxDecoration(
//          color: Theme.of(context).accentColor,
//          borderRadius: BorderRadius.circular(50.0),
//        ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          color: Theme.of(context).accentColor,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[  
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Container(
                  width: 1,
                  height: double.infinity,
                  color: Theme.of(context).dividerColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: IconButton(
                  icon: Icon(
                    Icons.settings,
                    color: Theme.of(context).accentIconTheme.color,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SettingsPage(),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}