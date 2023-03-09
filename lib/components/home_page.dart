import 'package:flutter/material.dart';
import 'package:untitled4/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: kPrimaryColor,
          leading: IconButton(icon: Icon(Icons.menu),
            onPressed: (){},)
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
