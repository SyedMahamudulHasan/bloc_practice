import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ArticleListScreen extends StatelessWidget {
  const ArticleListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Articles"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: const InputDecoration(
                  border: const OutlineInputBorder(), hintText: "Search..."),
              onChanged: (query) {},
            ),
          ),
          Expanded(child: _buildResults())
        ],
      ),
    );
  }

  Widget _buildResults() {
    return const Center(
      child: Text("No Results"),
    );
  }
}
