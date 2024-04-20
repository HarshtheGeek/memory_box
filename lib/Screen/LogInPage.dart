import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:memory_box/Utils/Colors.dart';

import '../Utils/Utils.dart';
class LogInPage extends GetView {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    var width = Config.screenWidth;
    var height = Config.screenHeight;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors:linearColor,
          ),
        ),
        child: Center(
          child: Card(
            color: cardColor,
            elevation: 8.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
              height: height! * 0.5,
              width: width! * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: width,
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox( width: width,child: Text("Log In",style: TextStyle(color: widgetColor,fontFamily:'Productsansmedium',fontSize: 30,height: 0.9),)),
                        SizedBox(height: 5,),
                        Text("Glad to have your back",style: TextStyle(fontSize: 12,fontFamily: 'Productsansmedium',color: widgetColor)),
                      ],
                    ),
                  ),
                  const LoginForm(),
                  Container(width:width,alignment: Alignment.topRight,child: TextButton(onPressed: (){}, child:  const Text("Forgot Password ?",style: TextStyle(fontSize: 12,fontFamily: 'Productsansmedium'),))),
                  SizedBox(
                    width: width*0.7,
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                widgetColor)),
                        child: const Text(
                          "Log In",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text("Don’t have an account ?",style: TextStyle(fontSize: 12),),
                      TextButton(onPressed: (){}, child: Text("Sign Up"))
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: width/6,child: const Divider(thickness: 1.5,color: Colors.black,)),
                      const Text("  Or Sign in with  ",style: TextStyle(fontSize: 12),),
                      SizedBox(width: width/6,child: const Divider(thickness: 1.5,color: Colors.black,)),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.add))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String _email = "";
  String _password = "";
  bool _isHidden = true ;
  void togelView(){
    setState(() {
      _isHidden = !_isHidden;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(
            height: 40,
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                labelText: "Email",
                // prefixIcon: const Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email address';
                }
                if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+\.[a-zA-Z]+").hasMatch(value)) {
                  return 'Please enter a valid email address';
                }
                return null;
              },
              onSaved: (value) {
                _email = value!;
              },style: const TextStyle(height: 1.0),
            ),
          ),
          const SizedBox(height: 10.0),
          SizedBox(
            height: 40,
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border:
                OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none
                ),
                labelText: "Password",
                suffixIcon: IconButton(
                  icon: Icon(
                    _isHidden ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _isHidden = !_isHidden;
                    });
                  },
                ),
              ),
              obscureText: _isHidden?true:false,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                if (value.length < 6) {
                  return 'Password must be at least 6 characters long';
                }
                return null;
              },
              onChanged:(value) {

              } ,
              onSaved: (value) {
                _password = value!;
              }, style: const TextStyle(height: 1.0),
            ),
          ),
        ],
      ),
    );
  }
}
