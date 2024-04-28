import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/favourite_provider.dart';

class MyFavouriteView extends StatefulWidget {
  const MyFavouriteView({super.key});

  @override
  State<MyFavouriteView> createState() => _MyFavouriteViewState();
}

class _MyFavouriteViewState extends State<MyFavouriteView> {
  @override
  Widget build(BuildContext context) {
    final favoutiteProvider = Provider.of<FavouriteItemProvider>(context);
    print('build');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Favourite with Provider',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyFavouriteView()));
              },
              child: const Icon(
                Icons.favorite,
                color: Colors.white,
              ))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: favoutiteProvider.selectedItems.length,
                itemBuilder: (context, index) {
                  return Consumer<FavouriteItemProvider>(
                      builder: (context, value, child) {
                    return ListTile(
                        onTap: () {
                          if (value.selectedItems.contains(index)) {
                            value.removeItems(index);
                          } else {
                            value.addItems(index);
                          }
                        },
                        title: Text('Item$index'),
                        trailing: Icon(
                          value.selectedItems.contains(index)
                              ? Icons.favorite
                              : Icons.favorite_border_outlined,
                        ));
                  });
                }),
          ),
        ],
      ),
    );
  }
}
