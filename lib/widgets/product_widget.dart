import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ProductsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8),
            child: SizedBox(
              width: 270,
              child: Stack(
                children: [
                  SizedBox(
                    height: 320,
                    child: Neumorphic(
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.flat,
                            boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(12),
                            ),
                            color: Color(0xFFF3F6FD),
                            intensity: 1),
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/images/product${index + 1}.png",
                                    height: 250,
                                    width: 250,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Text("Ürün ismi",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(255, 17, 4, 40))),
                                SizedBox(height: 8),
                                Text(
                                  "\$223",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ))),
                  ),
                  Padding(
                      padding: EdgeInsets.only(right: 25),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 228, 157, 63),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 4,
                                      spreadRadius: 4)
                                ]),
                            child: Icon(
                              CupertinoIcons.cart_fill_badge_plus,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ))
                ],
              ),
            ),
          );
        });
  }
}
