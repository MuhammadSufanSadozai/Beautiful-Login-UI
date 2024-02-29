import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return 
       Container(
        decoration: BoxDecoration(
        image: DecorationImage(image: 
           AssetImage('images/login.png'),fit: BoxFit.cover),  
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              child: 
              Padding(
                padding: const EdgeInsets.only(left: 35,top: 104),
                child: Text('Welcom \nBack ',style:TextStyle(color: Colors.white,fontSize: 33)),
              ),

            ),
            Container(
              
             child: Padding(
               padding: const EdgeInsets.only(top: 300,left: 20,right: 20),
               child: Column
                           (
                children: [
                  
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'Email',
                      border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                      )
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'Password',
                      border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                      )
                    ),
                  ),
                ],
               ),
             ),
            )
          ],
        )
      
      
      )
      );
    
  }
}