import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var ht = MediaQuery.of(context).size.height;
    var wt = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(children: [
        SafeArea(
          child: SizedBox(
            height: ht * 0.25,
            width: wt * 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: wt * 0.13,
                      child: const DrawerButton(),
                    ),
                  ],
                ),
                SizedBox(
                  width: wt * 0.12,
                ),
                SizedBox(
                  height: ht * 0.25,
                  width: wt * 0.60,
                  child: Image.asset('assets/images/robot.png'),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(wt * 0.015),
                      child: Container(
                        height: wt * 0.12,
                        width: wt * 0.12,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: const Color.fromRGBO(96, 188, 250, 1),
                            width: 4,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/women.png',
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: ht * 0.05,
        ),
        SizedBox(
          width: wt * 0.95,
          child: Column(
            children: [
              Text(
                'Welcome',
                style:
                    TextStyle(fontSize: ht * 0.03, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: ht * 0.03,
              ),
              Text(
                'Enter Email Id And Password',
                style:
                    TextStyle(fontSize: ht * 0.02, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: ht * 0.05,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: wt * 0.05),
                child: TextFormField(
                  style: TextStyle(fontSize: ht * 0.02),
                  decoration: const InputDecoration(
                    hintText: 'Username',
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 4,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: ht * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: wt * 0.05),
                child: TextFormField(
                  style: TextStyle(fontSize: ht * 0.02),
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 4,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false, // hide labels for selected items
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Color.fromRGBO(131, 141, 174, 1),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bar_chart_rounded,
                color: Color.fromRGBO(131, 141, 174, 1),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Color.fromRGBO(131, 141, 174, 1),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_outlined,
                color: Color.fromRGBO(131, 141, 174, 1),
              ),
              label: ''),
        ],
      ),
    );
  }
}
