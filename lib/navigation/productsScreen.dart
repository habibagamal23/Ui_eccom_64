import 'package:flutter/material.dart';

class ProductModel {
  String title;
  String price;
  String image;
  String description;

  ProductModel({
    required this.title,
    required this.price,
    required this.image,
    required this.description,
  });
}

class Productsscreen extends StatelessWidget {
  const Productsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    var myproducts = [
      ProductModel(
          title: "lAPTOP",
          price: "120",
          description: "this is laptop",
          image:
              "https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=600"),

      ProductModel(
          title: "MOUSE",
          price: "120",
            description: "this is mouse",
          image:
              "https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=600"),
      ProductModel(
          title: "SCREEEN",
          price: "120",
          description: "this is screen",
          image:
              "https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=600"),
      ProductModel(
          title: "SPEAKER",
          price: "120",
            description: "this is speaker",
          image:
              "https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=600"),
    ];
    return Scaffold(
        body: ListView.builder(
            itemCount: myproducts.length,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context ,
                        MaterialPageRoute(builder: (context)=>
                        DeatilsProductsScreen(
                      productModel:myproducts[i] ,
                    )));
                  },
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.green,
                    child: Column(
                      children: [
                        Image.network(myproducts[i].image , height: 50,),
                        Text(myproducts[i].title),
                        Text(myproducts[i].price)
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}



class DeatilsProductsScreen extends StatelessWidget {

  ProductModel productModel;
   DeatilsProductsScreen({super.key , required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Column(children: [
      Image.network(productModel.image , height: 50,),
      SizedBox(height: 20),
      Text(productModel.description),
      Text(productModel.title),
      Text(productModel.price)
      ,
        ElevatedButton(onPressed: (){
          Navigator.pop(context);
        }, child: Icon(Icons.arrow_back))
      ]),);
  }
}
