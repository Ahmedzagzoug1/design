import 'package:design1/widgets/custom_e_commerce_widgets/custom_app_bar.dart';
import 'package:design1/widgets/custom_e_commerce_widgets/custom_bottom_navigation.dart';
import 'package:design1/widgets/custom_selectable_text.dart';
import 'package:flutter/material.dart';

class ECommercePage extends StatelessWidget {
  const ECommercePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(),
    bottomNavigationBar:const CustomBottomNavigation(),
      body: Column(
        children: [
          TextField(
            
            decoration: InputDecoration(
              label: Text('search'),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(16))
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            width: 900,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image:const DecorationImage(image: AssetImage('assets/images/image28.jfif'),
              fit: BoxFit.fill,repeat: ImageRepeat.repeatX)
            ),
          child: SizedBox(
           
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child:Align(
          alignment:Alignment.bottomCenter ,
          child: CustomSelectableText(first: 'first',second: 's',third: 's',)
          
           ),
              
            ),
          ),
          ),
        ],
      ),
    );
  }
}
