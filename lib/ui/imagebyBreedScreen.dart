

import 'package:doggo/Apis/AllDogCeoApis.dart';
import 'package:doggo/Models/breed_list/ImageByBreedModel.dart';
import 'package:doggo/shared/appConstents.dart';
import 'package:doggo/shared/appFonts.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImageByBreedListScreen extends StatelessWidget {
  ImageByBreedListScreen({super.key, required this.breed});
  final String breed;
  List newlst = [];

  apicall() async {
    ApiService api = ApiService();

    ImageByBreedModel randomImageList = await api.fetchImageByBreed(breed);
    List<String> randomImageList1 = randomImageList.message!.toList();

    newlst = randomImageList1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xff1ec1d3),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: Text(
          "Breed: $breed",
          style: appstylebold(15, Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: apicall(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    //  return Image(image: AssetImage('assets/images/loginAnimation.gif'));
                    return Image(image: AssetImage(loadingAnimationGifImage));
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
    );
  }
}
