import 'package:flutter/material.dart';
import 'package:meal_app/models/category.dart';

class CategoryGridItems extends StatelessWidget {
  const CategoryGridItems({super.key, required this.category, required this.onSelecteCategory});

  final Category category;
  final void Function() onSelecteCategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelecteCategory,  
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.55),
              category.color.withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
      ),
    );
  }
}
