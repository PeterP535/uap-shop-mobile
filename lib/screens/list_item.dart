import 'package:flutter/material.dart';
import 'package:uap_shop/models/item.dart'; // Import model Item
import 'package:uap_shop/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

import 'item_detail.dart';

class ProductPage extends StatefulWidget {
  final int id;

  const ProductPage({Key? key, required this.id}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<Item> _items = [];
  bool _isLoading = true;
  bool _isError = false;

  Future<void> _fetchItems() async {
    try {
      final request = context.read<CookieRequest>();
      final response = await http.get(
        Uri.parse("http://localhost:8000/items/"), // Ensure the URL is correct
        headers: request.headers,
      );

      if (response.statusCode == 200) {
        final List<Item> items = itemFromJson(response.body);
        setState(() {
          _items = items;
          _isLoading = false;
          _isError = false;
        });
      } else {
        throw Exception("Failed to load items: ${response.statusCode}");
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
        _isError = true;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error fetching items: $e")),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Item List"),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: LeftDrawer(id: widget.id),
      body: _isLoading
          ? const Center(
        child: CircularProgressIndicator(), // Show loading spinner
      )
          : _isError
          ? const Center(
        child: Text(
          "Failed to load items. Please try again.",
          style: TextStyle(fontSize: 18.0, color: Colors.red),
          textAlign: TextAlign.center,
        ),
      )
          : _items.isEmpty
          ? const Center(
        child: Text(
          "No items available.",
          style: TextStyle(fontSize: 18.0),
        ),
      )
          : ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          final item = _items[index];
          return Card(
            margin: const EdgeInsets.symmetric(
                vertical: 8.0, horizontal: 16.0),
            child: ListTile(
              title: Text(
                item.fields.name,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Price: ${item.fields.price}\nAmount: ${item.fields.amount}",
              ),
              isThreeLine: true,
              trailing: IconButton(
                icon: const Icon(Icons.chevron_right),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ItemDetail(item: item),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
