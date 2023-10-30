import 'dart:async';
import 'dart:ui';


import 'package:doggo/Apis/AllDogCeoApis.dart';
import 'package:doggo/Models/RandomDogImageModel.dart';
import 'package:doggo/shared/appConstents.dart';
import 'package:doggo/shared/appFonts.dart';
import 'package:doggo/ui/breedListScreen.dart';
import 'package:doggo/ui/subBreedListScreen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController controller = PageController(
    initialPage: 0,
  );
  List newlst = [];

  apicall() async {
    ApiService api = ApiService();

    RandomDogImagesModel randomImageList = await api.fetchRandomDogImageData();
    List<String> randomImageList1 = randomImageList.message!.toList();

    newlst = randomImageList1;
  }

  int currentPage = 0;

  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 3), (_) {
      currentPage = (currentPage + 1) % 2;
      controller.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  // @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xfffcbd57),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 150,
              child: Expanded(
                child: PageView(
                  allowImplicitScrolling: true,
                  reverse: true,
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BreedListScreen()));
                      },
                      child: Stack(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 150,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 75, 199, 240),
                                  borderRadius: BorderRadius.circular(18)),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 130,
                            right: 0,
                            child: Text(
                              homeScreenBannner1Text,
                              style: appstylefuncky(
                                  22,
                                  const Color.fromARGB(255, 255, 255, 129),
                                  FontWeight.bold),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            right: 220,
                            //top: 20,
                            child: Image(
                              image: AssetImage(homeScreenBanner1Image),
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SubBreedScreen()));
                      },
                      child: Stack(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 150,
                              decoration: BoxDecoration(
                                  color: const Color(0xff707092),
                                  borderRadius: BorderRadius.circular(18)),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 130,
                            right: 0,
                            child: Text(
                              homeScreenBannner2Text,
                              style: appstylefuncky(
                                  22,
                                  const Color.fromARGB(255, 255, 255, 129),
                                  FontWeight.bold),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            right: 230,
                            top: 20,
                            child: Image(
                              image: AssetImage(homeScreenBanner2Image),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                homeScreenText,
                style: appstylebold(50, Colors.white),
              ),
            ),
            Expanded(
              child: FutureBuilder(
                  future: apicall(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      //  return Image(image: AssetImage('assets/images/loginAnimation.gif'));
                      return GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 4.0,
                                  mainAxisSpacing: 8.0),
                          itemCount: newlst.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage(loadingAnimationGifImage),
                              ),
                            );
                          });
                    } else {
                      return GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 4.0,
                                  mainAxisSpacing: 8.0),
                          itemCount: newlst.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(newlst[index]),
                              ),
                            );
                          });
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
