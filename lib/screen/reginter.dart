import 'package:flutter/material.dart';

import '../utils/shar_helper.dart';

class Regitar extends StatefulWidget {
  const Regitar({Key? key}) : super(key: key);

  @override
  State<Regitar> createState() => _RegitarState();
}

class _RegitarState extends State<Regitar> {
  TextEditingController txtemail =TextEditingController();
  TextEditingController txtpassword =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
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


            ElevatedButton(onPressed: () {

              String? email= txtemail.text;
              String? password= txtpassword.text;

              sharClass shars =sharClass();
              shars.setData(email: email,password: password);
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("success lsign up ")));

              Navigator.pushReplacementNamed(context, '/');


            }, child: Text("Register")),
            // ElevatedButton(onPressed: () {
            //
            //   String? email= txtemail.text;
            //   String? password= txtpassword.text;
            //
            //
            // }, child: Text("Dont hve accoum")),
          ],
        ),
      ),
    ));
  }
}
