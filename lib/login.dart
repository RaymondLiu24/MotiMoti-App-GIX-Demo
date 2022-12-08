import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/login.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.4),
              alignment: Alignment.topCenter,
              child: RichText(
                text: const TextSpan(
                    style: TextStyle(
                      fontSize: 60.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Mo',
                        style: TextStyle(
                          color: Color(0xFF7176E0),
                        ),
                      ),
                      TextSpan(
                        text: 'ti',
                      ),
                      TextSpan(
                        text: 'Mo',
                        style: TextStyle(
                          color: Color(0xFF7176E0),
                        ),
                      ),
                      TextSpan(
                        text: 'ti',
                      ),
                    ]),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.55),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextField(
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: "xiaogege",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 30),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                            obscureText: true,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: "******",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 30),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          SizedBox(
                            height: 80,
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF7176E0),
                                elevation: 8,
                                shape: const BeveledRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/storyline');
                                debugPrint('press sign in');
                              },
                              child: const Padding(
                                padding: EdgeInsets.zero,
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(fontSize: 40),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/register');
                                },
                                child: const Text(
                                  'Sign Up',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Color(0xff4c505b),
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Forgot Password',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Color(0xff4c505b),
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
