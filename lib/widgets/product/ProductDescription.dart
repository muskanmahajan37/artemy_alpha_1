import 'package:artemy_beta_2/config/Animation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      padding: EdgeInsets.all(40),
      decoration: decorationBox(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              FadeAnimation(
                0.5,
                Text(
                  'Escultura',
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Spacer(),
              FadeAnimation(
                  0.5,
                  Icon(
                    FontAwesomeIcons.heart,
                    color: Colors.redAccent,
                  )),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          FadeAnimation(
            0.5,
            Text(
              'Here we can see a fucking subtitle',
              style: TextStyle(color: Colors.black87),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FadeAnimation(
            0.5,
            Text(
              'Here we can see a fucking description about the product babe',
              style: TextStyle(color: Colors.black87, height: 2.3),
            ),
          ),
          Spacer(),
          Row(
            children: [
              FadeAnimation(
                0.5,
                Text(
                  '\$300',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              Spacer(),
              FadeAnimation(
                  0.5,
                  OutlineButton(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    child: Text(
                      'Add to cart',
                    ),
                    shape: StadiumBorder(),
                    borderSide: BorderSide(width: 2, color: Colors.black45),
                    highlightedBorderColor: Colors.black38,
                    onPressed: () {},
                  )),
            ],
          )
        ],
      ),
    );
  }

  BoxDecoration decorationBox() {
    return BoxDecoration(
      color: Colors.white,
    );
  }
}
