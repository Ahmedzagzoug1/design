import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Ayah extends StatefulWidget {
  const Ayah({super.key});

  @override
  State<Ayah> createState() => _AyahState();
}

class _AyahState extends State<Ayah> {
  String ayah = ' اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: MediaQuery.of(context).size.height - 100,
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Colors.grey.shade900, width: 2.0),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            _buildAyahText(context),
            _buildBottomContainer(context),
          ],
        ),
      ),
    );
  }

  Widget _buildAyahText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32),
      child: Text(
        ayah,
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
        style: TextStyle(color: Colors.white, fontSize: 25.0),
      ),
    );
  }

  Widget _buildBottomContainer(BuildContext context) {
    return Positioned(
      bottom: -20,
      width: MediaQuery.of(context).size.width - 32,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: _buildBottomContainer2(context),
        // Add content here
      ),
    );
  }



Widget _buildBottomContainer2(BuildContext context) =>  Row(textDirection: TextDirection.rtl,

    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          
        Container(
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white,width: 2.0)  
          ),
          
          child: Text('1',style: TextStyle(color: Colors.white,fontSize: 20),),
        ),
        SizedBox(width: 10.0,), 
        Text('التكرار',style: TextStyle(color: Colors.white,fontSize: 20),),],
      ),
      Container(
        height: 50,
        child: VerticalDivider(
          color: Colors.white,

          thickness: 2.0,
          width: 2,
        ),
      ),
Row(
        children: [
        Container(
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.grey.shade800,
            border: Border.all(color: Colors.white,width: 2.0),
            shape: BoxShape.circle
          ),
          
          child: Container(
           decoration: BoxDecoration(

           ),
            child: GestureDetector(
            child: Icon(Icons.share,color: Colors.white,),onTap: (){},
         ),)
        ),
                SizedBox(width: 10.0,), 

        Text('مشاركة',style: TextStyle(color: Colors.white,fontSize: 20),),],
      ),    ],
  );
}
