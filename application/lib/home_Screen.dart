
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'info.dart';

 

class HomeScreen extends StatelessWidget {
  void ToAssessment(){
    print("Start Assessment");
    
  }

  
  


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

     
      
      home:  Scaffold(
      //backgroundColor: Color.fromARGB(255, 40, 64, 78),
     /* decoration: BoxDecoration(
            gradient: LinearGradient(
            colors: [Colors.white,const Color.fromARGB(255, 245, 120, 111) ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.5],
            tileMode: TileMode.clamp,
          ),
        ), */
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 124, 21, 13),
        title: Text('Sana',
        style: TextStyle(color: Colors.white),
        ),),
        //const SizedBox(height: 10);
      body:
       Column(
        children: [
          Container(
           //padding: EdgeInsets.all(25),
            //margin: EdgeInsets.symmetric(horizontal: 25),
            
            width: double.infinity, 
            //margin: EdgeInsets.all(70),
            margin:EdgeInsets.only(top: 150, bottom: 50, left: 70, right: 70),
            child:Text("Hi I'm Sana. I can help you learn more about your kidney.",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          ),),
          
          Container( 
            //width: double.infinity,
            width: 380,
            height: 50,
            child: ElevatedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStatePropertyAll(Colors.white),
               backgroundColor: MaterialStatePropertyAll(const Color.fromARGB(255, 167, 60, 53))
               ),
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CKDAssessmentScreen ()),
            );
            },
            child: Text("Start  assessment",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold),
            ),),)
        ]
      ),

      bottomNavigationBar: BottomNavigationBar(
      
        items: const<BottomNavigationBarItem>
         [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.grey,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Library',
            backgroundColor: Colors.grey,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.grey,
          ),
          ],
      ) ,

      

    ),);
  }
}
   