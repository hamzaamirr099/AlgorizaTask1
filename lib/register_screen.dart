import 'package:algoriza_task1/components/text_field.dart';
import 'package:algoriza_task1/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'components/button.dart';
class RegisterScreen extends StatefulWidget {


  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  bool isPassword1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Image.asset("assets/abstractImage1.jpg",),
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
                          "Register",
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
                      "Email",
                    ),
                    const SizedBox(height: 5.0,),
                    MyTextField(label: "Eg. example@email.com"),
                    SizedBox(height: 20.0,),
                    Text("Phone Number"),
                    SizedBox(height: 5.0,),
                    Container(
                      height: 70.0,
                      child: IntlPhoneField(
                        decoration: const InputDecoration(
                          labelText: 'Eg. 812345678',
                          labelStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                          ),
                        ),
                        initialCountryCode: 'EG',
                      ),
                    ),
                    const SizedBox(height: 5.0,),
                    const Text("Password"),
                    const SizedBox(height: 5.0,),
                    MyTextField(
                        label: "Password",
                        suffix:
                        isPassword1 ? Icons.visibility_off : Icons.visibility,
                        isPassword: isPassword1,
                        visiblePassword: () {
                          setState(() {
                            isPassword1 = !isPassword1;
                          });
                        }
                    ),
                    const SizedBox(height: 15.0,),
                    MyButton(
                      text: "Register",
                      backColor: Colors.blueAccent,
                      height: 50.0, func: () { },
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
                    Container(
                      width: double.infinity,
                      height: 50.0,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text("Sign up with Google",style: const TextStyle(fontSize: 16.0),),
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Row(
                      children: [
                        Spacer(),
                        const Text(
                          "Has any account?",
                        ),
                        TextButton(
                            onPressed: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => LoginScreen()));
                            },
                            child: const Text("Sign in here")),
                        const Spacer(),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "By regestering your account, you are agree to our",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Spacer(),
                        TextButton(onPressed: (){}, child: const Text("terms and conditions")),
                        Spacer(),
                      ],
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
