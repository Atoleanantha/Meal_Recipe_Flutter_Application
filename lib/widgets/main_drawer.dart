import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primaryContainer,
                  Theme.of(context).colorScheme.primaryContainer.withOpacity(0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            ),
            child: Row(
              children: [
                Icon(Icons.fastfood,size: 48,color: Theme.of(context).colorScheme.primary,),
                const SizedBox(width: 18,),
                Text('Cooking Up!',style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.primary
                )),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.restaurant_rounded,color: Theme.of(context).colorScheme.onBackground,),
            title: Text('Meals',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              fontSize: 24
            )),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.settings,color: Theme.of(context).colorScheme.onBackground,),
            title: Text('Filters',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
                fontSize: 24
            )),
            onTap: (){},
          )
        ],
      ),
    );
  }
}