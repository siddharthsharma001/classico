import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(

      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Siddharth Sharma"),
                accountEmail: Text("siddharth.sharma@gmail.com"),
                currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/images/siddharthprofile.png"),),
      
              ),
      
            ),
            SizedBox(
              height: 20.0,
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home , color: Colors.white,),
              title: Text("Home" , textScaleFactor: 1.5,),
              textColor: Colors.white,
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled , color: Colors.white,),
              title: Text("profile" , textScaleFactor: 1.5,),
              textColor: Colors.white,
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail , color: Colors.white,),
              title: Text("Contact Us" , textScaleFactor: 1.5,),
              textColor: Colors.white,
            ),
          ],
      
        ),
      ),

    );
  }
}