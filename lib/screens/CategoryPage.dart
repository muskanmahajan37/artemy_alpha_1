import 'package:artemy_beta_2/config/Animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  final String title;
  final String image;
  final String tag;

  CategoryPage({this.title, this.image, this.tag});

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: widget.tag,
              child: Material(
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.image), fit: BoxFit.cover)),
                  child: Container(
                    margin: EdgeInsets.only(top: 15),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                          Colors.black.withOpacity(.8),
                          Colors.black.withOpacity(.1)
                        ])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FadeAnimation(
                                  0.5,
                                  IconButton(
                                    icon: Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      height: 40,
                                    ),
                                    FadeAnimation(
                                      0.5,
                                      IconButton(
                                        icon: Icon(
                                          Icons.search,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                    FadeAnimation(
                                      0.5,
                                      IconButton(
                                        icon: Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                    FadeAnimation(
                                        0.5,
                                        IconButton(
                                          icon: Icon(
                                            Icons.shopping_cart,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {},
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          widget.title,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 40),
                        ),
                        SizedBox(
                          height: 90,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Nuevos Productos",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Ver Mas",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 11,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
