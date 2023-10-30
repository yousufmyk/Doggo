
import 'package:doggo/Models/subBreedModel.dart';
import 'package:doggo/shared/appConstents.dart';
import 'package:doggo/shared/appFonts.dart';
import 'package:doggo/ui/imagebySubBreedScreen.dart';
import 'package:flutter/material.dart';

class SubBreedScreen extends StatefulWidget {
  SubBreedScreen({super.key});

  @override
  State<SubBreedScreen> createState() => _SubBreedScreenState();
}

class _SubBreedScreenState extends State<SubBreedScreen> {
// var expanded = false;

  List<SubBreedModel> subBreed = subBreedlist;
  List<bool> _expanded = List.generate(32, (i) => true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff9acfb8),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: Text(
          subBreedAppBarText,
          style: appstylebold(20, Colors.white),
        ),
      ),
      body: Column(children: [
        Expanded(
          child: ListView.builder(
              itemCount: subBreed.length,
              itemBuilder: (context, index) {
                return ExpansionPanelList(
                  expansionCallback: (panelIndex, isExpanded) {
                    setState(() {
                      _expanded[index] = !_expanded[index];
                      //print(subBreed.length);
                    });
                  },
                  children: [
                    ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isexpanded) {
                        return ListTile(
                          leading: const Icon(Icons.pets),
                          title: Text(subBreed[index].breed.toString()),
                        );
                      },
                      body: ListTile(
                        title:
                            Text("Breed: ${subBreed[index].breed.toString()}"),
                        // subtitle: Text("SubBreed: ${subBreed[index].subBreed.toString()}"),

                        subtitle: ListView.builder(
                            shrinkWrap: true,
                            itemCount: subBreed[index].subBreed.length,
                            itemBuilder: (context, i) {
                              return ListTile(
                                title: Text(
                                    "SubBreed: ${subBreed[index].subBreed[i]}"),
                                trailing: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ImageBySubBreedListScreen(
                                                  breed: subBreed[index]
                                                      .breed
                                                      .toString(),
                                                  subBreed: subBreed[index]
                                                      .subBreed[i],
                                                )));
                                  },
                                  icon: const Icon(Icons.image),
                                ),
                              );
                            }),
                      ),
                      isExpanded: !_expanded[index],
                    ),
                  ],
                );
              }),
        )
      ]),
    );
  }
}
