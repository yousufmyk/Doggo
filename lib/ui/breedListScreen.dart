
import 'package:doggo/Apis/AllDogCeoApis.dart';
import 'package:doggo/Models/AllBreedListModel.dart';
import 'package:doggo/shared/appConstents.dart';
import 'package:doggo/shared/appFonts.dart';
import 'package:doggo/ui/imagebyBreedScreen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BreedListScreen extends StatelessWidget {
  BreedListScreen({super.key});

  List AllBreeds = [];

  apicall() async {
    ApiService api = ApiService();

    BreedListModel AllBreedList = await api.fetchlistofallbreeds();
    List<String> AllBreedList1 = AllBreedList.message!.toList();

    AllBreeds = AllBreedList1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: Text(
          breedsAppBarText,
          style: appstylebold(20, Colors.white),
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
                    return ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: AllBreeds.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: const Icon(Icons.pets),
                            title: Text(
                              AllBreeds[index],
                              style: appstylebold(16, Colors.black),
                            ),
                            subtitle: Text(
                              breedListScreenText,
                              style: appstylenormal(10, Colors.black),
                            ),
                            trailing: IconButton(
                                onPressed: () {
                                 
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          ImageByBreedListScreen(
                                        breed: AllBreeds[index],
                                      ),
                                    ),
                                  );
                                },
                                icon: const Icon(Icons.arrow_forward_ios)),
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
