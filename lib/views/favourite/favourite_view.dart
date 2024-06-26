import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_leaning/provider/favourite_provider.dart';
import 'package:provider_leaning/views/favourite/my_favourite.dart';

class FavouriteView extends StatefulWidget {
  const FavouriteView({super.key});

  @override
  State<FavouriteView> createState() => _FavouriteViewState();
}

class _FavouriteViewState extends State<FavouriteView> {
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
                itemCount: 100,
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
