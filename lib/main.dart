import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
     class MyApp extends StatelessWidget {

   var email = TextEditingController();
   var password = TextEditingController();

       @override
       Widget build(BuildContext context) {
         return MaterialApp(
           debugShowCheckedModeBanner: false,
           home: Scaffold(
             appBar: AppBar(
               backgroundColor: Colors.black,
               title: Text(
                 'Login',
                 style: TextStyle(
                  fontWeight: FontWeight.bold,
                 ),
               ),
             ),
             body: Padding(
               padding: const EdgeInsets.all(20.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('Welcome',
                     style: TextStyle(
                       fontSize: 30.0,
                       fontWeight: FontWeight.bold,
                     ),
                   ),
                   SizedBox(
                     height: 40.0,
                   ),
                   TextFormField(
                     controller:email,
                   keyboardType:TextInputType.emailAddress,
                   onFieldSubmitted:(value){
                     print(value);
                   } ,
                     onChanged: (value){
                       print(value);
                     },
                   decoration:InputDecoration(
                    labelText: 'Email Address',
                     prefixIcon: Icon(
                       Icons.email_outlined,
                     ) ,
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(30.0),
                     ),
                  ) ,
                   ),
                   SizedBox(
                     height: 30.0,
                   ),
                   TextFormField(
                     controller: password ,
                     obscureText: true,
                     keyboardType:TextInputType.visiblePassword,
                     onFieldSubmitted:(value){
                       print(value);
                     } ,
                     onChanged: (value){
                       print(value);
                     },
                     decoration:InputDecoration(
                       labelText: 'Password',
                       prefixIcon: Icon(
                         Icons.lock_open,
                       ) ,
                       suffixIcon: Icon(
                         Icons.remove_red_eye
                       ),
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(30.0),
                       ),
                     ) ,
                   ),
                   SizedBox(
                     height: 30.0,
                   ),
                   Container(
                     decoration:BoxDecoration(
                       color: Colors.black,
                       borderRadius: BorderRadius.circular(30.0),
                     ) ,
                     height: 50,
                     width: double.infinity ,
                     child: MaterialButton(
                         onPressed:(){
                           print(email.text);
                           print(password.text);
                         },
                       child:Text(
                         'login',
                         style: TextStyle(
                           color: Colors.white
                         ),
                       ),
                     ),
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('Don\'t have an account'),
                       TextButton(
                           onPressed: (){},
                           child:Text('Register Now'),
                       ),
                     ],
                   ),
                 ],
               ),
             ),
           ),
         );
       }
     }
