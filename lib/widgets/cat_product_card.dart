import 'package:basic_ecommerce/screens/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CatProductCard extends StatelessWidget {
  int pIndex;
  CatProductCard(this.pIndex);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Neumorphic(
        style: NeumorphicStyle(
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
            color: Color(0xFFF3F6FD),
            intensity: 1),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductScreen(),
                      ));
                },
                child: Image.asset(
                  "assets/images/product${pIndex + 1}.png",
                  height: 150,
                  width: 150,
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Ürün ismi",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 42, 6, 49),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
