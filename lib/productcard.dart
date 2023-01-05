import 'package:flutter/material.dart';
import 'package:flutter_hepsiburada_clone/colors.dart';
import 'package:flutter_hepsiburada_clone/product.dart';

class ProductCard extends StatelessWidget {
  Product product;

  ProductCard({required this.product,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: SizedBox(
        height: 300,
        width: 150,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.0),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Image(
                image: NetworkImage(product.imageURL),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6.0,left: 2),
              child: Align(alignment: Alignment.centerLeft,
                  child: Text("${product.price} TL",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: anaRenk)))
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6.0,left: 2,right: 2),
              child: Align(alignment: Alignment.centerLeft,
                  child: Text(product.description,overflow: TextOverflow.ellipsis,maxLines: 2,style: TextStyle(fontSize:12,color: renk2))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6.0,left: 2,right: 2),
              child: OutlinedButton(
                onPressed: (){

                },
                style: OutlinedButton.styleFrom(minimumSize: const Size.fromHeight(35)),
                child: Text("SEPETE EKLE",style: TextStyle(color: renk2)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
