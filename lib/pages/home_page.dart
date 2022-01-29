import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List images = [
    "assets/images/img_1.png",
    "assets/images/img_2.png",
    "assets/images/img_3.png",
    "assets/images/img_4.png",
    "assets/images/img_5.png",
  ];

  List images2 = [
    "assets/images/img_0.png",
    "assets/images/img_1.png",
    "assets/images/img_2.png",
    "assets/images/img_3.png",
    "assets/images/img_4.png",
    "assets/images/img_5.png",
  ];
  int count = 0;
  PageController _pageController = PageController();
  bool timeIsUp = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(const Duration(seconds: 5), (timer) {
      setState(() {
        timeIsUp = true;
      });
    });

    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (count == images2.length-1) {
        count = 0;
      }
      count++;
      _pageController.animateToPage(
        count,
        duration: Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    child: PageView(
                      controller: _pageController,
                      onPageChanged: (index) {
                        setState(() {
                          count = index;
                        });
                      },
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.35,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(images2[count]),
                                fit: BoxFit.cover),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    colors: [
                                      Colors.black.withOpacity(0.6),
                                      Colors.black.withOpacity(0.6),
                                      Colors.black.withOpacity(0.5),
                                      Colors.black.withOpacity(0.5),
                                      Colors.black.withOpacity(0.5),
                                    ]
                                )
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.35,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(images2[count]),
                                fit: BoxFit.cover),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    colors: [
                                      Colors.black.withOpacity(0.6),
                                      Colors.black.withOpacity(0.6),
                                      Colors.black.withOpacity(0.5),
                                      Colors.black.withOpacity(0.5),
                                      Colors.black.withOpacity(0.5),
                                    ]
                                )
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.35,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(images2[count]),
                                fit: BoxFit.cover),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    colors: [
                                      Colors.black.withOpacity(0.6),
                                      Colors.black.withOpacity(0.6),
                                      Colors.black.withOpacity(0.5),
                                      Colors.black.withOpacity(0.5),
                                      Colors.black.withOpacity(0.5),
                                    ]
                                )
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.35,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(images2[count]),
                                fit: BoxFit.cover),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    colors: [
                                      Colors.black.withOpacity(0.6),
                                      Colors.black.withOpacity(0.6),
                                      Colors.black.withOpacity(0.5),
                                      Colors.black.withOpacity(0.5),
                                      Colors.black.withOpacity(0.5),
                                    ]
                                )
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.35,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(images2[count]),
                                fit: BoxFit.cover),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    colors: [
                                      Colors.black.withOpacity(0.6),
                                      Colors.black.withOpacity(0.6),
                                      Colors.black.withOpacity(0.5),
                                      Colors.black.withOpacity(0.5),
                                      Colors.black.withOpacity(0.5),
                                    ]
                                )
                            ),
                          ),
                        ),
                      ]
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          child: const Text(
                            "What kind of hotel you need?",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          width: MediaQuery.of(context).size.width * 0.8,
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          height: 43,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(left: 10),
                          width: MediaQuery.of(context).size.width * 0.75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              icon: Icon(Icons.search, size: 20, color: Colors.grey,),
                              hintText: "Search for hotels...",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20,)
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Best hotels", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 15,),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        itemCount: images.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return _itemOfList(index);
                          }
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Luxury hotels", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 15,),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                          itemCount: images.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return _itemOfList(index);
                          }
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Best hotels", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 15,),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                          itemCount: images.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return _itemOfList(index);
                          }
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }

  Widget _itemOfList(int index)  {
    return timeIsUp ? Card(
      margin: const EdgeInsets.only(right: 15),
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
          width: 260,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(images[index]),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20)
          ),
          child: Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.only(left: 20, bottom: 20),
            child: Text("Hotel ${index+1}", style: const TextStyle(color: Colors.white, fontSize: 18),),
          )
      ),
    )
        : Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
      child: Card(
        margin: const EdgeInsets.only(right: 15),
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
            width: 260,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(images[index]),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20)
            ),
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: Text("Hotel ${index+1}", style: const TextStyle(color: Colors.white, fontSize: 18),),
            )
        ),
      ),
    );
  }

}
