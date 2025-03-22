import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:interface_1/screens/routes_folder/home_page.dart';

class SingupPage extends StatefulWidget {
  const SingupPage({super.key});

  @override
  State<SingupPage> createState() => _SingupPageState();
}

class _SingupPageState extends State<SingupPage> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late GlobalKey<FormState> _formkey;
  bool _isObscure = true;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _formkey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        title: Text(
          "Create Account",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter your Full Name",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 76, 76, 76),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                
                    labelText: "Full Name",
                    labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                    prefixIcon: Icon(Icons.account_circle, color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                 SizedBox(height: 10),
                Text(
                  "Enter Date of birth",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 76, 76, 76),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: "Date of birth",
                    labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                    prefixIcon: Icon(Icons.calendar_today, color: Colors.white),
                  ),
                style: TextStyle(color: Colors.white, fontSize: 20),

                ),
                 SizedBox(height: 10),
                Text(
                  "Enter Your email",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 76, 76, 76),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                    prefixIcon: Icon(Icons.email_outlined, color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  validator: MultiValidator([
                    EmailValidator(errorText: 'enter a valid email address'),
                    RequiredValidator(errorText: 'email is required'),
                  ]),
                ),
                SizedBox(height: 10),
                Text(
                  "Enter your Password",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _passwordController,
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 76, 76, 76),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                    prefixIcon: Icon(Icons.lock, color: Colors.white),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                      icon: Icon(
                        _isObscure
                            ? CupertinoIcons.eye_slash
                            : CupertinoIcons.eye,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'password is required'),
                    MinLengthValidator(
                      8,
                      errorText: 'password must be at least 8 digits long',
                    ),
                    MaxLengthValidator(
                      20,
                      errorText: 'password must be at least 20 digits long',
                    ),
                  ]),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CupertinoButton(
                        color: Color.fromARGB(255, 76, 76, 76),
                        borderRadius: BorderRadius.circular(30),
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                         Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                         ); 
                        } else {
                            {
                              print("failure");
                             }
                          }
                        },
                        child: Text(
                          "Sing Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot password?",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
