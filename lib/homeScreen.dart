import 'package:beatiful_ui/registerScreen.dart';
import 'package:flutter/cupertino.dart';

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
                padding: const EdgeInsets.only(left: 35,top: 100),
                child: Text('Welcome \nBack ',style:TextStyle(color: Colors.white,fontSize: 33)),
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
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
             Text('Sign Up',style: TextStyle(color: Colors.black,fontSize: 27,fontWeight: FontWeight.w500),),
            Container(
  child: CircleAvatar(
    backgroundColor: Colors.grey.shade800,
    radius: 30,
    child: IconButton(
      onPressed: () {
        // Navigate to the register screen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RegisterScreen()), // Replace RegisterScreen with the name of your register screen widget
        );
      },
      icon: Icon(Icons.arrow_forward),
    ),
  ),
)
              ],),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sign in',style: TextStyle(color: Colors.black,decoration: TextDecoration.underline,fontSize: 18),),
                  Text('Forgot password',style: TextStyle(color: Colors.black,decoration: TextDecoration.underline,fontSize: 18),)
                ],
              )
                ],
               ),
              
             ),
            ),
            
          ],
        )
      
      
      )
      );
    
  }
}