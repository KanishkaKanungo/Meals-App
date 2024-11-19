import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';
import 'package:meals_app/widgets/category_grid_item.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key, required this.itemList});

  final List<Category> itemList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text(
          "Pick Your Category!",
          style: TextStyle(
            color: Colors.white
          ),
        ),
       ),
       body: Padding(
         padding: const EdgeInsets.symmetric(
          horizontal: 27,
          vertical: 25
         ),
         child: GridView(
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 1.5
          ),
          children:  [
            ...itemList.map((item){
              return CategoryGridItem(category: item);
            })
          ],
         ),
       ),
    );
  }
}
