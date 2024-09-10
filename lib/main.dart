import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginPage(),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9, 
          height: MediaQuery.of(context).size.height * 0.9, 
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Row(
              children: [
              
                Expanded(
                  flex: 1, 
                  child: ClipRRect(
                    borderRadius:const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          'lib/assets/image.png', 
                          fit: BoxFit.cover,
                        ),
                        Container(
                          color: Colors.black.withOpacity(0.3), 
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Explore Demo Limited's Premier Logistics\nand Freight Services",
                              style: GoogleFonts.lato(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                
                Expanded(
                  flex: 1, 
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                          Align(
                            alignment: Alignment.topLeft,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'lib/assets/logo.png', 
                                  height: 40,
                                ),
                                SizedBox(width: 10), 
                                ShaderMask(
                                  shaderCallback: (bounds) =>const LinearGradient(
                                    colors: [Color(0xFF00B4DB), Color(0xFF0083B0)],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ).createShader(bounds),
                                  child: Text(
                                    "DEMO",
                                    style: GoogleFonts.lato(
                                      fontSize: 28, 
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white, 
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 60),
                          
                          Center(
                            child: Column(
                              children: [
                               
                                CircleAvatar(
                                  radius: 40,
                                  backgroundColor: Colors.blue.shade100,
                                  child: Image.asset(
                                    'lib/assets/profile.png', 
                                    height: 50,
                                  ),
                                ),
                                SizedBox(height: 20),
                                
                                Text(
                                  'Welcome Back',
                                  style: GoogleFonts.lato(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'We are glad to see you',
                                  style: GoogleFonts.lato(
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 30),
                                
                                TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Username',
                                    labelStyle: TextStyle(color: Colors.grey),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      borderSide: BorderSide(
                                        color: Colors.grey.shade300, 
                                        width: 1.5, 
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0), 
                                      borderSide: BorderSide(
                                        color: Colors.blue.shade600, 
                                        width: 2.0,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    labelStyle: TextStyle(color: Colors.grey),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      borderSide: BorderSide(
                                        color: Colors.grey.shade300,
                                        width: 1.5,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      borderSide: BorderSide(
                                        color: Colors.blue.shade600,
                                        width: 2.0,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 30),
                                
                                Container(
                                  width: double.infinity, 
                                  height: 50, 
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25), 
                                    gradient:const LinearGradient(
                                      colors: [
                                        Color(0xFF00B4DB), 
                                        Color(0xFF0083B0), 
                                      ],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    ),
                                  ),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.transparent, 
                                      shadowColor: Colors.transparent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25), 
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'LOGIN',
                                        style: GoogleFonts.lato(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15),
                               
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Forgot Password?',
                                    style: GoogleFonts.lato(color: Colors.blue.shade600),
                                  ),
                                ),
                                SizedBox(height: 30),
                                
                                Text(
                                  '© 2024 DEMO GROUP. All Rights Reserved',
                                  style: GoogleFonts.lato(
                                    fontSize: 12,
                                    color: Colors.grey,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}