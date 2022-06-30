import 'package:algoriza_task1/components/button.dart';
import 'package:algoriza_task1/register_screen.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 30.0, 15.0, 15.0),
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: const Color.fromRGBO(245, 241, 193, 100.0),
                      ),
                      child: MaterialButton(
                        onPressed:(){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => LoginScreen()));
                        },
                        child: const Text(
                          "Skip",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("7",style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.amber),),
                    Text(
                      "Krave",
                      style: TextStyle(
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                      ),

                    ),
                  ],
                ),
                Expanded(
                  child: PageView(
                    children: [
                      Column(
                        children: [
                          Expanded(child: Image.asset("assets/delivery.png")),
                          const Text("Get food delivery to your doorstep asap",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 15.0,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("We have young and professional delivery team that will bring your food as soon as possible to you doorstep",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
                            ),
                          ),

                        ],
                      ),
                      Column(
                        children: [
                          Expanded(child: Image.asset("assets/delivery1.png")),
                          const Text("Get food delivery to your doorstep asap",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 15.0,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("We have young and professional delivery team that will bring your food as soon as possible to you doorstep",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),

                //Image.asset("assets/delivery2.png", width: MediaQuery. of(context). size. width - 30.0, height: 300.0,),

                const SizedBox(height: 20.0,),

                MyButton(
                  text: "Get Started",
                  fontColor: Colors.white,
                  height: 60.0, func: () { Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                    ),
                    TextButton(
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => RegisterScreen()));
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.teal,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
