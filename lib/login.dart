import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/select.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xffe8dfd8),


      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            
            Spacer(),

            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  children: [
                    Text(
                      'You Fragrance\n     Message',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 45,
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                          height: 13,
                        ),
                    ),
                    
                    Expanded(
                      child: Text(
                        'Formuiated according to your wishes',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              flex: 7,
              child: Image.asset('assets/0005299.png')
              ),
            



            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                      width: 370,
                      child: ElevatedButton(

                        onPressed: () {
                          Get.to(Select());
                        },

                        child: Text('Login'),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                          backgroundColor: MaterialStateProperty.all(Colors.grey[900]),
                        ),


                      ),
                    ),
              
              
                    Expanded(
                      child: SizedBox(
                          height: 15,
                        ),
                    ),
                    
              
              
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Dont have acount?',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(' Sign Up', style: TextStyle(color: Colors.grey[900])),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Spacer()

          ],
        ),
      )),
    );
  }
}
