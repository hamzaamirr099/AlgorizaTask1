import 'package:algoriza_task1/components/button.dart';
import 'package:algoriza_task1/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Image.asset("assets/abstractImage.jpg",),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: FloatingActionButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios_sharp),
                      backgroundColor: Colors.black,
                      mini: true,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Welcome to Fashion Daily"),
                    const SizedBox(height: 10.0,),
                    Row(
                      children:[
                        const Text(
                          "Sign in",
                          style: TextStyle(
                            fontSize: 40.0,
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                                "Help",
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                            )
                        ),
                        const Icon(
                          Icons.help,
                          color: Colors.blueAccent,
                        ),
                      ],
                    ),
                    const SizedBox(height: 15.0,),
                    const Text(
                      "Phone Number",
                    ),
                    const SizedBox(height: 10.0,),
                    Container(
                      height: 70.0,
                      child: IntlPhoneField(
                        decoration: InputDecoration(
                          labelText: 'Eg. 812345678',
                          labelStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                          ),
                        ),
                        initialCountryCode: 'EG',
                      ),
                    ),
                    const SizedBox(height: 15.0,),
                    MyButton(
                      text: "Sign in",
                      backColor: Colors.blueAccent,
                      height: 50.0,
                      func: () {},
                    ),
                    const SizedBox(height: 15.0,),
                    Row(
                      children: const [
                        Spacer(),
                        Text("Or"),
                        Spacer(),
                      ],
                    ),
                    const SizedBox(height: 15.0,),
                    // MyButton(
                    //     text: "Sign in with Google",
                    //     backColor: Colors.blueAccent,
                    //     height: 50.0, func: () {},
                    // ),
                    Container(
                      width: double.infinity,
                      height: 50.0,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text("Sign in with Google",style: TextStyle(fontSize: 16.0),),
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Row(
                      children: [
                        Spacer(),
                        const Text(
                          "Doesn't has any account?",
                        ),
                        TextButton(
                            onPressed: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => RegisterScreen()));
                            },
                            child: const Text("Register here")),
                        const Spacer(),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Use the application according to policy rules. Any kind of violations will be subject to sanctions.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey[600],

                        ),
                      ),
                    ),
                  ],
                ),
              ),

          ],
      ),
        )
    );
  }
}
