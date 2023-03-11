import 'package:flutter/material.dart';
import 'package:untitled4/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -10),
              blurRadius: 35,
              color: kPrimaryColor.withOpacity(0.38),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){}, 
                icon: Icon(Icons.photo_album)
            ),
            IconButton(onPressed: (){},
                icon: Icon(Icons.account_box)
            ),
            IconButton(onPressed: (){},
                icon: Icon(Icons.photo_album)
            ),
          ],
        ),
      ),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: kPrimaryColor,
          leading: IconButton(icon: Icon(Icons.menu),
            onPressed: (){},)
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
                children:[
                  Container(
                      margin: EdgeInsets.only(bottom: kDefaultPadding*2.5),
                      height: 150,
                      padding: EdgeInsets.only(
                          left: kDefaultPadding,
                          right: kDefaultPadding,
                          bottom: 36 + kDefaultPadding
                      ),
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.only(
                              bottomLeft:Radius.circular(36),
                              bottomRight: Radius.circular(36)
                          )

                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Hi Uishoppy!",
                            style:
                            Theme.of(context).textTheme.headline5?.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold,
                            ),
                          ),
                          Expanded(child: Image.asset("assets/images/logo.png")),
                        ],
                      )
                  ),
                  Positioned(
                    bottom: 40,
                    left: 0,
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      height: 54,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius:50,
                            color: kPrimaryColor.withOpacity(0.23),
                          )],
                      ),
                      child: TextField(
                        onChanged: (value){},
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                ]
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),
                  ),
                  GestureDetector(
                    onLongPress: (){},
                    child: Container(
                      height: 35,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: kPrimaryColor
                      ),
                      child: Center(
                        child: Text('More',
                          style: TextStyle(
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child:Row(
                  children: [
                    containers(text: 'Samantha', country: 'Russia', function: (){}, num: '400', secondText: 'Russia',),
                    SizedBox(
                      width: 7,
                    ),
                    containers(text: 'Angelica', country: 'Russia', function: (){}, num: '540', secondText: 'Russia',),
                    SizedBox(
                      width: 7,
                    ),
                    containers(text: 'Bobski', country: 'Russia', function: (){}, num: '600', secondText: 'Russia',),
                    SizedBox(
                      width: 7,
                    ),
                    containers(text: 'Lonely', country: 'Russia', function: (){}, num: '800', secondText: 'Russia',),
                  ],
                ) ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Featured Plants",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),
                  ),
                  GestureDetector(
                    onLongPress: (){},
                    child: Container(
                      height: 35,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: kPrimaryColor
                      ),
                      child: Center(
                        child: Text('More',
                          style: TextStyle(
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child:Row(
                  children: [
                    largerContainers(text: 'Samantha', country: 'Russia', function: (){}, num: '400', secondText: 'Russia',),
                    SizedBox(
                      width: 7,
                    ),
                    largerContainers(text: 'Angelica', country: 'Russia', function: (){}, num: '540', secondText: 'Russia',),
                    SizedBox(
                      width: 7,
                    ),
                    largerContainers(text: 'Bobski', country: 'Russia', function: (){}, num: '600', secondText: 'Russia',),
                    SizedBox(
                      width: 7,
                    ),
                    largerContainers(text: 'Lonely', country: 'Russia', function: (){}, num: '800', secondText: 'Russia',),
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

class containers extends StatelessWidget {
  String text;
  String country;
  Function function;
  String num;
  String secondText;

   containers({
     required this.text, required this.country,required this.function, required this.num,required this.secondText
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: 250,
        width: 150,
        child: Column(
          children: [
            Expanded(child: Image.asset("assets/images/image_1.png")),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(text,
                      style: TextStyle(
                          color: Colors.black38,
                          fontSize: 18
                      ),
                    ),
                    Text(secondText,
                      style: TextStyle(
                          color: Colors.black38,
                          fontSize: 18
                      ),
                    ),
                  ],
                ),
                
                Text(num,
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 18
                  ),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class largerContainers extends StatelessWidget {
  String text;
  String country;
  Function function;
  String num;
  String secondText;

  largerContainers({
    required this.text, required this.country,required this.function, required this.num,required this.secondText
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: 250,
        width: 250,
        child: Column(
          children: [
            Expanded(child: Image.asset("assets/images/image_1.png")),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(text,
                      style: TextStyle(
                          color: Colors.black38,
                          fontSize: 18
                      ),
                    ),
                    Text(secondText,
                      style: TextStyle(
                          color: Colors.black38,
                          fontSize: 18
                      ),
                    ),
                  ],
                ),

                Text(num,
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 18
                  ),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class tiles extends StatelessWidget {
  const tiles({
    Key? key, required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding/4),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.only(right: kDefaultPadding/4),
                height: 7,
                color: kPrimaryColor.withOpacity(0.2),
              )
          )
        ],
      ),
    );
  }
}
