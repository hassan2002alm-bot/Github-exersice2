import 'package:flutter/material.dart';
import 'package:flutter3/homepage.dart';

void main() {
  runApp(Products());
}

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'build/images/m.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            // padding: EdgeInsets.all(20),
            child: ListView(children: [
              Row(children: [
                Expanded(child:  TextFormField(
                  decoration: InputDecoration(border: InputBorder.none,
                      fillColor: Colors.grey[200],
                      filled: true
                  ),
                )),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(Icons.menu,size: 40,),
                )
              ],)
            ],),
          )
        ],

      ),
    );
  }
}



