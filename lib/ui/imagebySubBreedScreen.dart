
import 'package:doggo/Apis/AllDogCeoApis.dart';
import 'package:doggo/Models/SubBreedImageModel.dart';
import 'package:doggo/shared/appConstents.dart';
import 'package:doggo/shared/appFonts.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImageBySubBreedListScreen extends StatelessWidget {
  ImageBySubBreedListScreen(
      {super.key, required this.breed, required this.subBreed});
  final String breed;
  final String subBreed;
  List newlst = [];

  apicall() async {
    ApiService api = ApiService();

    SubBreedImageModel randomImageList =
        await api.fetchSubByBreedRandomImage(breed, subBreed);
    List<String> randomImageList1 = randomImageList.message!.toList();

    newlst = randomImageList1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffec776a),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: Text(
          "Breed: $breed SubBreed: $subBreed",
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
