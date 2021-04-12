import 'package:flutter/material.dart';
import 'package:tastyapp/shared/colors.dart';



class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget> [
                SizedBox(height: 40),

                Container(
                  height: MediaQuery.of(context).size.height /4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/icon2.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: defaultColor,
                    ),
                    hintText: "Enter Your Email",

                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: defaultColor,
                    ),
                    hintText: "Enter Your Password",
                  ),
                  obscureText: true,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 40,
            child: Material(
              borderRadius: BorderRadius.circular(20),
              color: defaultColor,
              elevation: 7.0,
              child: GestureDetector(
                onTap: (){},
                child: Center(
                  child: Text("SIGNUP",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                ),
              ),
            ),
          ),
       SizedBox(height: 30),
       MaterialButton(
        minWidth: double.infinity,
        height: 45,
       onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpPage()));

         },
        color: defaultColor,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
         ),
        child: Text(
            "BACK TO LOGIN",
         style: TextStyle(
         color: Colors.white,
          fontWeight: FontWeight.w600,
         fontSize: 14,
             ),
           ),
         ),
       ],
     ),
    );
  }
}

