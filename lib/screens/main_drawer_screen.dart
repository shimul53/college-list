import 'package:flutter/material.dart';

class MainDrawerScreen extends StatelessWidget {
  const MainDrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          color: Colors.purple,
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.only(top: 60, bottom: 10),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-PNG-Photos.png"),
                        fit: BoxFit.fill),
                  ),
                ),
                const Text(
                  "Shimul Tamo",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                const Text(
                  "shimul@gmail.com",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
        const ListTile(
          leading: Icon(Icons.person),
          title: Text(
            "Profile",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: null,
        ),
        const ListTile(
          leading: Icon(Icons.settings),
          title: Text(
            "Settings",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: null,
        ),
        const ListTile(
          leading: Icon(Icons.logout),
          title: Text(
            "Logout",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: null,
        ),
      ],
    ));
  }
}
