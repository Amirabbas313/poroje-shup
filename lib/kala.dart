import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/select.dart';

import 'data.dart';

class Kala extends StatefulWidget {
  final int id;

  const Kala({required this.id, super.key});

  @override
  State<Kala> createState() => _KalaState();
}

class _KalaState extends State<Kala> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe8dfd8),
      body: Center(
        child: Column(
          children: [



            Expanded(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {
                                  Get.to(Select());
                                },
                                icon: Icon(Icons.arrow_back_ios_new_rounded)),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.shopping_bag_outlined)),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: SizedBox(
                          height: 300,
                          child: Image.asset(Data.datas[widget.id].image)),
                    ),
                  ],
                ),
              ),
            ),




            Expanded(
              child: ListView(
                children: [


                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        color: Colors.white),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Container(
                          child: Column(
                            children: [




                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Chanel',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    Data.datas[widget.id].title,
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    Data.datas[widget.id].price,
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),




                              SizedBox(
                                height: 25,
                              ),



                              Text(
                                'N.5 LEAU is the N.5 of today. A vidrant adstrae flora under the banner of modernity, with\nfreshness at its core.',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),




                              SizedBox(
                                height: 25,
                              ),



                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Eaude Toilette',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ]),




                              SizedBox(
                                height: 15,
                              ),


                              // list 
                              SizedBox(
                                height: 90,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 7,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                        padding:
                                            const EdgeInsets.only(right: 17),
                                        child: SizedBox(
                                          width: 90,
                                          child: ElevatedButton(
                                            onPressed: (){},
                                            child: Text(''),
                                            style: ButtonStyle(
                                              shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(13)
                                                  )),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Color(0xfff9f9f9)),
                                            ),
                                          ),
                                        ));
                                  },
                                ),


                              ),
                              SizedBox(
                                height: 30,
                              ),

                              // Add +
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 60,
                                    width: 60,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Icon(
                                        Icons.favorite_border_rounded,
                                        color: Colors.grey,
                                      ),
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15))),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white),
                                      ),
                                    ),
                                  ),





                                  SizedBox(
                                    width: 20,
                                  ),



                                  
                                  SizedBox(
                                    height: 60,
                                    width: (MediaQuery.of(context).size.width * 2.6) / 4,
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15))),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.grey[900]),
                                        ),
                                        child: Text('+ Add To Cart')),
                                  ),
                                ],
                              ),
                            ],





                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
