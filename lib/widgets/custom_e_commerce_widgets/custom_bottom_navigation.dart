import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
 

  const CustomBottomNavigation(
      {super.key, });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      getBottomNavigationBarItem(icon: Icons.home,title: 'Home'),
      getBottomNavigationBarItem(icon: Icons.price_change,title: 'Price'),
      getBottomNavigationBarItem(icon: Icons.favorite,title: 'Favorite'),
            getBottomNavigationBarItem(icon: Icons.person,title: 'My Account'),

    ]);
  }

  BottomNavigationBarItem getBottomNavigationBarItem({required icon, required title}) {
 
    return BottomNavigationBarItem(
        icon:Icon( icon,textDirection: TextDirection.ltr,),
            label: title);
  }
}
