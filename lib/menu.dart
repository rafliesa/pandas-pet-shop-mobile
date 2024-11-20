import 'package:flutter/material.dart';
import 'package:pandas_pet_shop_mobile/screens/list_product.dart';
import 'package:pandas_pet_shop_mobile/screens/login.dart';
import 'package:pandas_pet_shop_mobile/widgets/left_drawer.dart';
import 'package:pandas_pet_shop_mobile/screens/form.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

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
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        drawer: const LeftDrawer(),
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
    final request = context.watch<CookieRequest>();
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Material(
      color: item.color,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () async {
          if (item.name == "Tambah Produk") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => produkForm()),
            );
          } else if (item.name == "Daftar Produk"){
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProductPage()
              ),
              );
          } else if (item.name == "Logout") {
            final response = await request.logout(
                "http://127.0.0.1:8000/auth/logout/");
            String message = response["message"];
            if (context.mounted) {
                if (response['status']) {
                    String uname = response["username"];
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("$message Sampai jumpa, $uname."),
                    ));
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                    );
                } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text(message),
                        ),
                    );
                }
            }
        }
        },
        child: Container(
          padding: const EdgeInsets.all(12),
          width: screenWidth * 0.35,
          height: screenHeight * 0.2,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
