import 'package:flutter/material.dart';
import 'login.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("homepage"),),
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
          'build/images/k.jpeg',
            fit: BoxFit.cover,
          ),
        ),

       Container(

         margin: EdgeInsets.all(10),
         padding: EdgeInsets.all(110),
          child:  Text("Fast Delvery at Your Doorstep",
            style: TextStyle(fontSize: 30,color: Colors.deepPurple),
            textAlign: TextAlign.center,
          ),
        ),
Container(

  alignment: Alignment.center,
  //color: Colors.red,
  margin: EdgeInsets.all(10),
padding: EdgeInsets.all(10),
 child: Container(
   decoration: BoxDecoration(color: Colors.deepPurple,borderRadius: BorderRadius.all(Radius.circular(90))),

   child:  MaterialButton(
     textColor: Colors.black,
     onPressed: () {
       Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
     },

     child: Text("Go To Page Sign in",),

   ),
 ),
)




        // margin: EdgeInsets.symmetric(horizontal: 90),



      ]),
    );
  }

}
