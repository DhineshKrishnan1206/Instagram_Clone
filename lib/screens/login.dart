import 'package:chatapp/screens/BottomBar.dart';
import 'package:chatapp/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Instagram",
                  style: TextStyle(fontFamily: 'Instagram', fontSize: 45),
                ),
                const SizedBox(
                  height: 40,
                ),
                const TextField(
                  style: TextStyle(),
                  decoration: InputDecoration(
                      label: Text("Enter your email"),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      fillColor: Color(0xffFAFAFA),
                      filled: true),
                ),
                const SizedBox(
                  height: 30,
                ),
                const TextField(
                  style: TextStyle(),
                  obscureText: true,
                  decoration: InputDecoration(
                      label: Text("Enter your Password"),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      fillColor: Color(0xffFAFAFA),
                      filled: true),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forget Password?",
                      style: TextStyle(color: Color(0xff3797EF)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xff3797EF),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  height: 55,
                  width: double.infinity,
                  child: Center(
                      child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return BottomBar();
                      }));
                    },
                    child: const Text(
                      "Log in",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  )),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://static.vecteezy.com/system/resources/previews/018/930/698/non_2x/facebook-logo-facebook-icon-transparent-free-png.png",
                      width: 30,
                      height: 30,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("Log in with Facebook",
                        style: TextStyle(color: Color(0xff3797EF))),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey.shade300,
                        height: 1,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const Text("or"),
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey.shade300,
                        height: 1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "Sign up.",
                      style: TextStyle(color: Color(0xff3797EF)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
