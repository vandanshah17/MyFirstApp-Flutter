import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: ListView(
        padding:EdgeInsets.zero,
        children: [
          
          DrawerHeader(
            padding:EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              
              accountEmail: Text("vandanshah17yahoo.com"),
              accountName: Text("Vandan Shah"),
              
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/image-vandan.jpeg"),
              ),
                
              ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.deepOrange,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.3,
              style: TextStyle(
                color: Colors.deepOrange,
              )
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.deepOrange,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.3,
              style: TextStyle(
                color: Colors.deepOrange,
              )
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail_solid,
              color: Colors.deepOrange,
            ),
            title: Text(
              "Email Me",
              textScaleFactor: 1.3,
              style: TextStyle(
                color: Colors.deepOrange,
              )
            ),
          ),
                    
























        ],
      ),
    );

  }
}
