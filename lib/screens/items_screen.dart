import 'package:flutter/material.dart';
import 'package:online_shopping_app/widgets/product_images.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          
          children: [
            Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xFFD4ECF7),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Stack(
                  children: [
                    Center(child: ProductImagesSlider()),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 20),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios_new, size: 25),
                      ),
                    )
                  ],
                )),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Apple Watch Series 6",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      RatingBar.builder(
                        itemBuilder: (context, _) =>
                            Icon(Icons.star, color: Colors.amber),
                        onRatingUpdate: (rating) {},
                        itemSize: 25,
                        itemCount: 5,
                        allowHalfRating: true,
                        initialRating: 3.5,
                        minRating: 1,
                        direction: Axis.horizontal,
                      ),
                      SizedBox(width: 5),
                      Text("(450)")
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        "\$140",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "\$260",
                        style: TextStyle(
                            color: Colors.black45,
                            decoration: TextDecoration.lineThrough),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        height:70,
        child:Row(children: [
          InkWell(
            onTap: (){},
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width/1.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:Colors.redAccent
              ),
              child: Center(
                child: Text("Add to Cart",style: TextStyle(
                  fontSize: 20,
                  color:Colors.white,
                  fontWeight: FontWeight.bold
                ),),
              ),
            ),
          ),
          Spacer(),
          InkWell(
            onTap: (){},
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width/5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:Color(0xFFD4ECF7)
              ),
              child: Center(
                child: Icon(Icons.favorite,color:Colors.redAccent,size: 30),
              ),
            ),
          )
        ],)
      ),
    );
  }
}
