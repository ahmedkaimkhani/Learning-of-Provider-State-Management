import 'package:flutter/material.dart';

class FavouriteView extends StatefulWidget {
  const FavouriteView({super.key});

  @override
  State<FavouriteView> createState() => _FavouriteViewState();
}

class _FavouriteViewState extends State<FavouriteView> {
  List<int> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Favourite with Provider',
          style: TextStyle(color: Colors.white),
        ),
        actions: const [Icon(Icons.favorite)],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      selectedItems.add(index);
                      setState(() {});
                    },
                    title: Text('Item$index'),
                    trailing: selectedItems.contains(index)
                        ? const Icon(Icons.favorite)
                        : const Icon(Icons.favorite_border_outlined),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
