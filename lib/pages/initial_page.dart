import 'package:codelab3/main.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://cf.bstatic.com/xdata/images/hotel/max1024x768/275162028.jpg?k=38b638c8ec9ec86624f9a598482e95fa634d49aa3f99da1838cf5adde1a14521&o=&hp=1',
              ),
              fit:BoxFit.cover
            )
          ),
        ),
        Container(
          color: mainThemeColor.withOpacity(0.8),
        ),
         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("Paradise", 
            textAlign: TextAlign.center,
            style: TextStyle(
              
              fontSize: 25,
              color: Colors.white
            ),
            ),
            const SizedBox(height: 60,),
            const Icon(Icons.pool,color: Colors.white,size: 80,),
            const SizedBox(height: 10,),
            Text("Choose location",
            textAlign:TextAlign.center,
            style: TextStyle(color: Colors.grey.withOpacity(0.7),
            fontSize: 12,
            
            ),
            ),
            const Text("Find a Hotel",
             textAlign:TextAlign.center,
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
            color: Colors.white),
            )
          ],
        )

      ],
      
    );
  }
}