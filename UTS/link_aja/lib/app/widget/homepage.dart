import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10),
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
                      width: 30,
                      height: 30,
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
          )
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