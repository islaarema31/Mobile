import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 237, 237),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://media.istockphoto.com/id/1212305692/id/vektor/siluet-kota-dengan-gradien-warna-abu-abu-putih.jpg?s=170667a&w=0&k=20&c=Z9LzfH8OeZJY5AsDNb2GURmN2VGQDgXh3EnhV7C2Ma4=',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIcon(
                      imageUrl:'https://seeklogo.com/images/L/link-aja-logo-F029ED0939-seeklogo.com.png',
                      width: 40,
                      height: 40,
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        border: Border.all(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(12.0)
                      ),
                      padding: EdgeInsets.all(10),
                      child: CustomIcon(
                        imageUrl: 'https://cdn-icons-png.flaticon.com/128/2089/2089363.png',
                        width: 24,
                        height: 24,
                      )),
                      SizedBox(width: 12,),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0)
                        ),
                        padding: EdgeInsets.all(10),
                        child: CustomIcon(
                          imageUrl: 'https://cdn-icons-png.flaticon.com/128/707/707680.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 5),
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 255, 21, 0),
                      Color.fromARGB(255, 190, 16, 0),
                      Color.fromARGB(255, 180, 12, 0),
                      Color.fromARGB(255, 160, 0, 0),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: const EdgeInsets.only(top: 20, left: 20, bottom: 10),
                    child: Text(
                      'HI, MUHAMMAD ISLAHUDDIN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 150,
                          height: 75,
                          margin: EdgeInsets.only(top: 5, left: 25),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(padding: const EdgeInsets.only(
                                    top: 15, left: 12
                                  ),
                                  child: Text(
                                    'Your Balance',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                  ),
                                  Padding(padding: const EdgeInsets.only(
                                    bottom: 15, top: 5, left: 14,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Rp. 50.000',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Container(
                                        width: 22,
                                        height: 22,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          shape: BoxShape.circle,
                                        ) ,
                                        child: Center(
                                          child: Icon(
                                            Icons.arrow_forward_outlined,
                                            color: Colors.white,
                                            size: 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 75,
                          margin: EdgeInsets.only(top: 5, left: 25),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(padding: const EdgeInsets.only(
                                    top: 15, left: 12
                                  ),
                                  child: Text(
                                    'Bonus Balance',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                  ),
                                  Padding(padding: const EdgeInsets.only(
                                    bottom: 15, top: 5, left: 14,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        '0',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Container(
                                        width: 22,
                                        height: 22,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          shape: BoxShape.circle,
                                        ) ,
                                        child: Center(
                                          child: Icon(
                                            Icons.arrow_forward_outlined,
                                            color: Colors.white,
                                            size: 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 75,
                margin: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 5),
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Image.network('https://cdn-icons-png.flaticon.com/128/5461/5461154.png',
                          width: 40,
                          height: 40,
                          ),
                          Text(
                            'Top Up',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                       Column(
                        children: [
                          Image.network('https://cdn-icons-png.flaticon.com/128/3678/3678518.png',
                          width: 40,
                          height: 40,
                          ),
                          Text(
                            'Send Money',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                       Column(
                        children: [
                          Image.network('https://cdn-icons-png.flaticon.com/128/785/785581.png',
                          width: 40,
                          height: 40,
                          ),
                          Text(
                            'Ticket Code',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                       Column(
                        children: [
                          Image.network('https://cdn-icons-png.flaticon.com/128/8917/8917404.png',
                          width: 40,
                          height: 40,
                          ),
                          Text(
                            'See All',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 5),
                width: MediaQuery.of(context).size.width,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                      children: [
                        Image.network('https://cdn-icons-png.flaticon.com/128/15/15874.png',
                          width: 40,
                          height: 40,
                          ),
                          Text(
                            'Pulsa/Data',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.network('https://cdn-icons-png.flaticon.com/128/3185/3185876.png',
                          width: 40,
                          height: 40,
                          ),
                          Text(
                            'Electricity',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.network('https://cdn-icons-png.flaticon.com/128/2927/2927067.png',
                          width: 40,
                          height: 40,
                          ),
                          Text(
                            'BPJS',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.network('https://cdn-icons-png.flaticon.com/128/686/686589.png',
                          width: 40,
                          height: 40,
                          ),
                          Text(
                            'mgames',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                      ],
                    ),
                    ],
                  ),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                      children: [
                        Image.network('https://cdn-icons-png.flaticon.com/128/4197/4197742.png',
                          width: 40,
                          height: 40,
                          ),
                          Text(
                            'Cabel Tv & Internet',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.network('https://cdn-icons-png.flaticon.com/128/606/606797.png',
                          width: 40,
                          height: 40,
                          ),
                          Text(
                            'PDAM',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.network('https://cdn-icons-png.flaticon.com/128/9409/9409781.png',
                          width: 40,
                          height: 40,
                          ),
                          Text(
                            'Kartu Uang Elektronik',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.network('https://cdn-icons-png.flaticon.com/128/512/512142.png',
                          width: 40,
                          height: 40,
                          ),
                          Text(
                            'More',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                      ],
                    ),
                    ],
                  ),
                  ],
                ),
              ),
           CarouselSlider(
            items: [
              // Add your carousel items here (e.g., images or widgets)
              Image.network('https://www.linkaja.id/uploads/images/promo/YW50aWtvZGVfXzE2OTg4MTMyNzJfd2ViLWJhbm5lci03OTR4MzY2LTIwMjMtMTEtMDF0MTEzMjQ5LTg2MC1qcGc.jpg'),
              Image.network('https://www.linkaja.id/uploads/images/promo//YW50aWtvZGVfXzE2OTg2MzE0MDVfd2ViLWJhbm5lci03OTR4MzY2LTIwMjMtMTAtMzB0MDkwMTAwLTY1My1qcGc.jpg'),
              Image.network('https://www.linkaja.id/uploads/images/promo//YW50aWtvZGVfXzE2OTY1ODE3MjRfd2ViLWJhbm5lci03OTR4MzY2LTIwMjMtMTAtMDZ0MTU0MTU1LTE5MS1qcGc.jpg'),
              Image.network('https://d2vuyvo9qdtgo9.cloudfront.net/promos/April2021/eO9OJ4Bnhm8uWEbma4Zh.jpg'),
              // Add more items as needed
            ],
            options: CarouselOptions(
              height: 200, // Adjust the carousel height as needed
              enlargeCenterPage: true, // Center the current item
              autoPlay: true, // Enable auto-play
              autoPlayInterval: Duration(seconds: 5), // Set auto-play interval
              autoPlayAnimationDuration: Duration(milliseconds: 800), // Animation duration
            ),
            ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomIcon extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;

  CustomIcon({
    required this.imageUrl,
    this.width = 30,
    this.height = 30,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle the tap event for the custom icon here
      },
      child: Image.network(
        imageUrl,
        width: width,
        height: height,
      ),
    );
  }
}