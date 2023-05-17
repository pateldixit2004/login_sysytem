import 'package:flutter/material.dart';

import '../utils/shar_helper.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  TextEditingController txtemail =TextEditingController();
  TextEditingController txtpassword =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          children: [
            
            Image.asset("assets/image/img.png"),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: txtemail,

                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.lightBlue),borderRadius: BorderRadius.circular(10)),
                  label: Text("Email"),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlue),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: txtpassword,

                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.lightBlue),borderRadius: BorderRadius.circular(10)),
                  label: Text("Password"),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlue),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20,),
            ElevatedButton(onPressed: () async {

              String? email= txtemail.text;
              String? password= txtpassword.text;

              sharClass shar =sharClass();
              Map m1=await shar.getData() ;
              if(m1['email']==email && password==m1['password'])
              {

                Navigator.pushNamed(context, 'home');
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("login")));


              }
              else
                {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("wrong")));

                }

            }, child: Text("Login"),style: ElevatedButton.styleFrom(),),

            Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {

                  Navigator.pushNamed(context, 're');
                }, child: Text("Don't have account ?")),
                Text("sing in"),
              ],
            )

          ],
        ),
      ),
    ),);
  }
}
