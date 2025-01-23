// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'package:books_app/common/app_images.dart';
import 'package:books_app/viewmodel/providers/book_provider.dart';

class BooksScreen extends StatelessWidget {
  const BooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text(
          "Book of the week",
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(AppImages.appbarIcon),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Consumer<BookProvider>(
          builder: (context, provider, child) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 183,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 120,
                        width: 120,
                        child: Image.asset(
                          AppImages.book2Png,
                        )),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "The Psychology of Money",
                          style: TextStyle(color: Color(0xff4D506C)),
                        ),
                        SizedBox(
                          height: 66,
                          width: 140,
                          child: Text(
                            "The psychology of money is the study of our behavior with money. Success with money isn't about knowledge, IQ or how good you are at math. It's about behavior, and everyone is prone to certain behaviors over others.",
                            style: TextStyle(
                                fontSize: 9,
                                color: Color(0xFF8F91A0),
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 26,
                                width: 95,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(0)),
                                    backgroundColor: Color(0xffDE7773),
                                  ),
                                  child: Text(
                                    "Grab Now",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                height: 26,
                                width: 95,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(0)),
                                    backgroundColor: Colors.white,
                                  ),
                                  child: Text(
                                    "Learn",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 10),
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
              SizedBox(
                height: 30,
              ),
              Text(
                "Recommanded for you",
                style: TextStyle(
                    color: Color(0xFF292A38),
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) => Card(
                    child: Center(
                        child: Image.asset(
                      rasmlar[index],
                      height: 100,
                      width: 100,
                      fit: BoxFit.contain,
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Popular books",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    // final book = provider.books[0];

                    return Card(
                      child: Column(
                        children: [
                          Image.asset(rasmlar[index]),
                          Text("1"),
                        ],
                      )
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String rasmUrl;
  final String title;
  final String author;
  final String janri;
  const CustomCard({
    super.key,
    required this.rasmUrl,
    required this.title,
    required this.author,
    required this.janri,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Image.asset(
            rasmUrl,
            height: 100,
            width: 100,
          ),
          Column(
            children: [
              Text(title),
              Text(author),
              Text(janri),
            ],
          ),
          Column(
            children: [
              ElevatedButton(onPressed: (){}, child: Text("Grab Now"),),
              ElevatedButton(onPressed: (){}, child: Text("Learn more"),),
            ],
          ),
        ],
      ),
    );
  }
}
