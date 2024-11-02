import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Pandas Pet Shop',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 245, 222, 179),
        ),
        body: Container(
            alignment: Alignment.center,
            padding: const EdgeInsetsDirectional.only(top: 20),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Button(
                      ItemHomepage("Daftar Produk", Icons.list, Colors.green)),
                  SizedBox(width: screenWidth * 0.04),
                  Button(ItemHomepage("Tambah Produk", Icons.add, Colors.blue))
                ],
              ),
              SizedBox(
                height: screenHeight * 0.025,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Button(ItemHomepage("Logout", Icons.exit_to_app, Colors.red)),
                  SizedBox(width: screenWidth * 0.04),
                  Button(ItemHomepage(
                      "Profil", Icons.manage_accounts, Colors.purple))
                ],
              ),
            ])));
  }
}

class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color;

  ItemHomepage(this.name, this.icon, this.color);
}

class Button extends StatelessWidget {
  final ItemHomepage item;
  const Button(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Material(
      color: item.color,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
        },
        child: Container(
          padding: const EdgeInsets.all(12),
          width: screenWidth * 0.35,
          height: screenHeight * 0.2,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 20,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
