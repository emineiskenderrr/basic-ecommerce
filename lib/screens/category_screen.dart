import 'package:basic_ecommerce/widgets/cat_product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CategoryScreen extends StatelessWidget {
  String category;
  CategoryScreen({required this.category});
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 253, 252, 253),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Color.fromARGB(255, 170, 122, 122),
                      ),
                    ),
                    Text(
                      category,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 170, 122, 122),
                      ),
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.flat,
                          boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(15),
                          ),
                          color: Color.fromARGB(255, 170, 122, 122),
                          intensity: 1),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Neumorphic(
                      style: NeumorphicStyle(
                        shape: NeumorphicShape.flat,
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(20),
                        ),
                        color: Color.fromARGB(255, 170, 122, 122),
                        intensity: 1,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 30),
                        child: Row(
                          children: [
                            Icon(
                              Icons.sort,
                              color: Colors.white,
                            ),
                            SizedBox(width: 6),
                            Text(
                              "Sırala",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                        shape: NeumorphicShape.flat,
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(20),
                        ),
                        color: Color.fromARGB(255, 170, 122, 122),
                        intensity: 1,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                        child: Row(
                          children: [
                            Icon(
                              Icons.filter_list,
                              color: Colors.white,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Filtrele",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio:
                      (MediaQuery.of(context).size.width - 15 - 10) / (2 * 250),
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  if (index % 2 == 0) {
                    return CatProductCard(index);
                  }
                  return OverflowBox(
                    maxHeight: 270 + 70,
                    child: Container(
                      margin: EdgeInsets.only(top: 70),
                      child: CatProductCard(index),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
