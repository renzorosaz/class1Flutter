import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginViewScreen extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                "Register",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Text("Register to continue", style: TextStyle(fontSize: 15, color: Colors.grey)),
            ),
            SizedBox(height: 55),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(5)),
                    child: Icon(Icons.facebook, color: Colors.blue[900]),
                  ),
                  Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(5)),
                      child: Icon(FontAwesomeIcons.google, color: Colors.yellow[700])),
                  Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(5)),
                      child: Icon(FontAwesomeIcons.instagramSquare, color: Colors.red[300])),
                ],
              ),
            ),
            SizedBox(height: 35),
            Container(child: Text("o Register with Email", style: TextStyle(fontSize: 15, color: Colors.grey))),
            SizedBox(height: 35),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Full Name"),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[50],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    width: 340,
                    child: TextField(
                        controller: nameController,
                        onChanged: (String value) {},
                        decoration: InputDecoration(
                            hintText: "Denilson Roni", hintStyle: TextStyle(color: Colors.grey), border: InputBorder.none))),
                SizedBox(
                  height: 30,
                ),
                Text("Email Adress"),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[50],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    width: 340,
                    child: TextField(
                        controller: emailController,
                        onChanged: (String value) {},
                        decoration: InputDecoration(
                            hintText: "denilsoo@gmail.com", hintStyle: TextStyle(color: Colors.grey), border: InputBorder.none))),
                SizedBox(
                  height: 30,
                ),
                Text("Password"),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[50],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    width: 340,
                    child: TextField(
                        controller: passwordController,
                        onChanged: (String value) {},
                        decoration:
                            InputDecoration(hintText: "*******", hintStyle: TextStyle(color: Colors.grey), border: InputBorder.none))),
                SizedBox(
                  height: 45,
                ),
                MaterialButton(
                    minWidth: 340,
                    height: 60,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    color: Colors.deepPurple[400],
                    onPressed: () {},
                    child: Text("Register", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17))),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  child: Text(
                "Already have an account?",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
              )),
              Container(child: Text("Login", style: TextStyle(fontSize: 15, color: Colors.purple[700], fontWeight: FontWeight.bold)))
            ])
          ],
        ),
      ),
    );
  }
}
