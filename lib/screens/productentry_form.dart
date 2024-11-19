import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:threethrift/screens/menu.dart';
import 'package:threethrift/widgets/left_drawer.dart';
// TODO: Impor drawer yang sudah dibuat sebelumnya

class ProductEntryFormPage extends StatefulWidget {
  const ProductEntryFormPage({super.key});

  @override
  State<ProductEntryFormPage> createState() => _ProductEntryFormPageState();
}

class _ProductEntryFormPageState extends State<ProductEntryFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _productName = "";
	String _description = "";
	int _price = 0;
  @override
  Widget build(BuildContext context) {
  final request = context.watch<CookieRequest>();
    return Scaffold(
  appBar: AppBar(
    title: const Center(
      child: Text(
        'Form Tambah Produk Kamu',
      ),
    ),
    backgroundColor: Theme.of(context).colorScheme.primary,
    foregroundColor: Colors.white,
  ),
  // TODO: Tambahkan drawer yang sudah dibuat di sini
  body: Form(
    key: _formKey,
    child: SingleChildScrollView(
      child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Produk",
          labelText: "Produk",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        onChanged: (String? value) {
          setState(() {
            _productName = value!;
          });
        },
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return "Nama produk tidak boleh kosong!";
          }
          return null;
        },
      ),
    ),
    Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextFormField(
    decoration: InputDecoration(
      hintText: "Description",
      labelText: "Description",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
    ),
    onChanged: (String? value) {
      setState(() {
        _description = value!;
      });
    },
    validator: (String? value) {
      if (value == null || value.isEmpty) {
        return "Deskripsi tidak boleh kosong!";
      }
      return null;
    },
  ),
),
Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextFormField(
    decoration: InputDecoration(
      hintText: "Price",
      labelText: "Price",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
    ),
    onChanged: (String? value) {
      setState(() {
        _price = int.tryParse(value!) ?? 0;
      });
    },
    validator: (String? value) {
      if (value == null || value.isEmpty) {
        return "Harga tidak boleh kosong!";
      }
      if (int.tryParse(value) == null) {
        return "Harga harus berupa angka!";
      }
      return null;
    },
  ),
),
Align(
  alignment: Alignment.bottomCenter,
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(
        Theme.of(context).colorScheme.primary),
  ),
  onPressed: () async {
    if (_formKey.currentState!.validate()) {
        // Kirim ke Django dan tunggu respons
        // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
        final response = await request.postJson(
            "http://localhost:8000/create-flutter/",
            jsonEncode(<String, String>{
                'name': _productName,
                'description': _description,
                'price': _price.toString(),
            // TODO: Sesuaikan field data sesuai dengan aplikasimu
            }),
        );
        if (context.mounted) {
            if (response['status'] == 'success') {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(
                content: Text("Produk baru berhasil disimpan!"),
                ));
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                );
            } else {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(
                    content:
                        Text("Terdapat kesalahan, silakan coba lagi."),
                ));
            }
        }
    }
},
  child: const Text(
    "Save",
    style: TextStyle(color: Colors.white),
  ),
),
  ),
),
  ],
),
    ),
  ),
);
  }
}