import 'package:flutter/material.dart';

import '../../constans.dart';

class BuildDrawer extends StatelessWidget {
  const BuildDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: kPrimaryColor,
            ),
            child: Image.asset('assets/images/logo.png'),
          ),
          const ListTile(
            leading: CircleAvatar(
              radius: 15,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 18,
              ),
              backgroundColor: kPrimaryColor,
            ),
            title: Text('My Profile'),
          ),
          const ListTile(
            leading: CircleAvatar(
              radius: 15,
              child: Icon(
                Icons.favorite,
                color: Colors.white,
                size: 18,
              ),
              backgroundColor: kPrimaryColor,
            ),
            title: Text('My Favorite'),
          ),
          const ListTile(
            leading: CircleAvatar(
              radius: 15,
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
                size: 18,
              ),
              backgroundColor: kPrimaryColor,
            ),
            title: Text('My products'),
          ),
        ],
      ),
    );
  }
}
