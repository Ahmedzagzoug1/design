import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
   CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      backgroundColor: Colors.transparent,
      elevation: 0,
      title:const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Welcome in Elsaghier\'s Store' ,style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold
          ),),
          Text('Elsaghier' ,style: TextStyle(
            fontSize: 40, fontWeight: FontWeight.bold,color: const Color.fromRGBO(255, 235, 59, 1)
          ),), 
        ],
    
      ),
    
    );
  }
  
  @override
  // TODO: implement preferredSize
 Size get preferredSize => const Size.fromHeight(kToolbarHeight);}