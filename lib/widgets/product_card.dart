import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:threethrift/screens/list_productentry.dart';
import 'package:threethrift/screens/login.dart';
import 'package:threethrift/screens/productentry_form.dart';

class ItemHomepage {
  final String name;
  final IconData icon;

  ItemHomepage(this.name, this.icon);
}

class ItemCard extends StatelessWidget {
  final ItemHomepage item;

  const ItemCard({super.key, required this.item});


  Color getBackgroundColor() {
    switch (item.name) {
      case "Lihat Daftar Produk":
        return Colors.blue;
      case "Tambah Produk":
        return Colors.green;
      case "Logout":
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Material(
      color: getBackgroundColor(),
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () async {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
                SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );
             if (item.name == "Tambah Produk") {
    // TODO: Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup MoodEntryFormPage.
    Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductEntryFormPage()));
  }
  else if (item.name == "Lihat Daftar Produk") {
    Navigator.push(context,
        MaterialPageRoute(
            builder: (context) => const ProductPage()
        ),
    );
}
else if (item.name == "Logout") {
    final response = await request.logout(
        // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
        "http://localhost:8000/auth/logout/");
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
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
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
