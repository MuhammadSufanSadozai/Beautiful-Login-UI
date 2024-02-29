import 'package:flutter/material.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
        decoration: BoxDecoration(
        image: DecorationImage(image: 
           AssetImage('images/register.png'),fit: BoxFit.cover),  
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
              IconButton(
      onPressed: () {
        // Navigate back to the previous screen
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back,color: Colors.white,),
    ),
            Container(
              child: 
              Padding(
                padding: const EdgeInsets.only(left: 35,top: 60),
                child: Text('Create \nAccount ',style:TextStyle(color: Colors.white,fontSize: 33)),
              ),

            ),
            Container(
              
             child: Padding(
               padding: const EdgeInsets.only(top: 220,left: 20,right: 20),
               child: Column
                           (
                children: [
                   TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'Name',
                      border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                       borderSide: BorderSide(color: Colors.white)
                      )
                    ),
                    
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'Email',
                      border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white)
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
                        borderSide: BorderSide(color: Colors.white)
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