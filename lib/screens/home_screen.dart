// ignore_for_file: prefer_const_constructors

import 'package:basic_ecommerce/screens/category_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../widgets/product_widget.dart';

class HomeScreen extends StatelessWidget {
  List categories = [
    "Sandalye",
    "Koltuk",
    "Yatak",
    "Masa",
    "Kapı",
    "Pencere",
  ];

  @override
  Widget build(BuildContext buildContext) {
    return DefaultTabController(
      length: 4,
      child: Material(
        color: Color.fromARGB(255, 253, 252, 253),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 10, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Yeni Ürünler",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 170, 122, 122)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: InkWell(
                        onTap: () {},
                        child: Neumorphic(
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
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Color.fromARGB(255, 228, 157, 63),
                  labelColor: Color.fromARGB(255, 228, 157, 63),
                  isScrollable: true,
                  labelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  unselectedLabelColor: Color.fromARGB(255, 170, 122, 122),
                  tabs: [
                    Tab(text: "Sandalye"),
                    Tab(text: "Koltuklar"),
                    Tab(text: "Yataklar"),
                    Tab(text: "Masalar"),
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 360,
                  child: TabBarView(children: [
                    ProductsWidget(),
                    ProductsWidget(),
                    ProductsWidget(),
                    ProductsWidget()
                  ]),
                ),
                SizedBox(height: 10),
                SizedBox(
                    height: 70,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CategoryScreen(
                                      category: categories[index],
                                    ),
                                  ));
                            },
                            child: Neumorphic(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 25),
                              style: NeumorphicStyle(
                                  shape: NeumorphicShape.flat,
                                  boxShape: NeumorphicBoxShape.roundRect(
                                      BorderRadius.circular(20)),
                                  color: Color.fromARGB(255, 233, 170, 88),
                                  intensity: 1),
                              child: Center(
                                  child: Text(
                                categories[index],
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                          );
                        })),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "En Uygun Teklifler",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 170, 122, 122),
                    ),
                  ),
                ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return ListTile(
                        minLeadingWidth: 70,
                        leading: Image.asset(
                          "assets/images/product${index + 1}.png",
                        ),
                        title: Text(
                          "Ürün ismi",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        subtitle: Text(
                          "Kategori",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        trailing: Text(
                          "278 TL",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
