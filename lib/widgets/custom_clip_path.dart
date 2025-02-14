import 'package:flutter/material.dart';

class CustomClipPath extends StatelessWidget {
  const CustomClipPath({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: Column(

        children: [
          AboveWidget(),SizedBox(height: 50,),
            BelowWidget()
             
            
        ]  
      ),
      
    );
  }
}

class BelowWidget extends StatelessWidget {
  const BelowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          
          ClipPath(
            clipper: Contianeer2Clipper(),
            child: Container(
              height: 300,
              color: Colors.grey,
            ),
          ),
          ClipPath(
            clipper: Contianeer2Clipper(),
            child: Container(
              height: 320,
              color: Colors.red,
            ),
          ),]),
      ],
    );
  }
}

class AboveWidget extends StatelessWidget {
  const AboveWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
        Stack( children: [
              
              ClipPath(
                clipper: ContianeerClipper(),
                child: Container(
        height: 320,
        color: Colors.grey,
                ),
              ),
              ClipPath(
                clipper: ContianeerClipper(),
                child: Container(
        height: 300,
        color: Colors.red,
                ),
              ),
            ]),
      ],
    );
  }
}

class ContianeerClipper extends CustomClipper<Path> {
  var path = Path();
  @override
  Path getClip(Size size) {
    path.lineTo(0, size.height - 50);
    var firstStart = Offset(size.width * .25, size.height);
    var firstEnd = Offset(size.width * .5, size.height - 50);
    var secondStart = Offset(size.width * .75, size.height);
    var secondEnd = Offset(size.width, size.height - 50);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    //path.lineTo(size.width * .7, size.height);
    path.lineTo(size.width, 0);
    
    // TODO: implement getClip
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}


class Contianeer2Clipper extends CustomClipper<Path> {
  var path = Path();
  @override
  Path getClip(Size size) {
    path.lineTo(0, size.height - 50);
    var firstStart = Offset(size.width * .25, size.height);
    var firstEnd = Offset(size.width * .5, size.height - 50);
    var secondStart = Offset(size.width * .75, size.height);
    var secondEnd = Offset(size.width, size.height - 50);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    //path.lineTo(size.width * .7, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    // TODO: implement getClip
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
