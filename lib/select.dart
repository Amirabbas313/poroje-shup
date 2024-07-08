import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/a/datae.dart';

import 'package:shop/item.dart';
import 'package:shop/kala.dart';

import 'data.dart';
// import 'a/datae.dart';

class Select extends StatefulWidget {
  const Select({super.key});

  @override
  State<Select> createState() => _SelectState();
}

class _SelectState extends State<Select> {
  @override
  void initState() {
    super.initState();
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Color(0xfff9f9f9),




      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [


              SizedBox(
                height: 50,
              ),


              // texts
              Container(
                child: Column(
                  children: [
                    Text(
                      'Select Your\nFavorite Products',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Find a wide variety of parfurne ptoducts',
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),





              // search
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [


                        SizedBox(
                          height: 60,
                          width: (MediaQuery.of(context).size.width * 3) / 5,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15))),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Find your parfume',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ),


                        SizedBox(
                          width: 20,
                        ),


                        SizedBox(
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Icon(Icons.add_outlined),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15))),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.grey[900]),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),



              // categorise
              Container(
                child: Column(
                  children: [



                    Padding(
                      padding: const EdgeInsets.only(left: 45),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Categories',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),


                    
                    Padding(
                      padding: const EdgeInsets.fromLTRB(45, 13, 0, 0),
                      child: SizedBox(
                        height: 90,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: Datae.datas.length,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              width: 150,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 10),
                                  child: Container(


                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Row(children: [
                                        SizedBox(
                                          width: 55,
                                          child: Image.asset(Datae.datas[index].i)),
                                        SizedBox(width: 5,),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                Datae.datas[index].t, 
                                                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),),
                                              SizedBox(height: 4,),
                                              Text(
                                                Datae.datas[index].s, 
                                                style: TextStyle(fontSize: 12, color: Colors.grey),),
                                            ],
                                          ),
                                        ],)
                                      ],),
                                    ),




                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 15,
                                          offset: Offset(3, 2),
                                          spreadRadius: 1,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),


                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),




              // special
              Container(
                child: Column(
                  children: [



                    Padding(
                      padding: const EdgeInsets.only(left: 45),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Special Offers',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 45),
                              child: Text(
                                'View All',
                                style: TextStyle(color: Colors.grey),
                              ),
                            )
                          ]),
                    ),



                    SizedBox(
                      height: 13,
                    ),


                    // list shop
                    Padding(
                      padding: const EdgeInsets.only(left: 45),
                      child: SizedBox(
                        height: 300,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: Data.datas.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 15,
                                      offset: Offset(3, 2),
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: SizedBox(
                                  width: 200,
                                  child: GestureDetector(
                                    onTap: () {
                                      Get.to(Kala(id: index));
                                    },
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          Data.datas[index].image,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          Data.datas[index].title,
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Text(
                                          Data.datas[index].price,
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
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










      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        clipBehavior: Clip.antiAlias,
        color: Colors.white,
        elevation: 30,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 4 - 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          Data.datas.add(
                            Item(
                                image: 'assets/0005299.png',
                                title: 'Eaude Jadid',
                                price: '200'),
                          );
                        });
                      },
                      icon: Icon(
                        Icons.home_outlined,
                        size: 27,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 4 - 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.bookmark_border,
                        size: 27,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 4 - 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_box_outlined,
                        size: 27,
                      ),
                      disabledColor: Colors.red,
                      focusColor: Colors.red,
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 4 - 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border_outlined,
                        size: 27,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.center_focus_weak_rounded),
        backgroundColor: Colors.grey[900],
      ),
      
      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
