import 'dart:convert';


import 'package:doggo/Models/AllBreedListModel.dart';
import 'package:doggo/Models/RandomDogImageModel.dart';
import 'package:doggo/Models/SubBreedImageModel.dart';
import 'package:doggo/Models/breed_list/ImageByBreedModel.dart';
import 'package:doggo/shared/appConstents.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<RandomDogImagesModel> fetchRandomDogImageData() async {
    final response = await http.get(
      Uri.parse(breedImageEndPoint),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    var data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return RandomDogImagesModel.fromJson(data);
    } else {
      if (kDebugMode) {
        print("RandomImage Api Error");
      }
      return data['status'];
    }
  }

  Future<BreedListModel> fetchlistofallbreeds() async {
    final response = await http.get(
      Uri.parse(breedListEndPoint),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      if (kDebugMode) {
        print("Breed list api sucess");
      }
      final jsonResponse = json.decode(response.body);

      return BreedListModel.fromJson(jsonResponse);
    } else {
      if (kDebugMode) {
        print("BreedList  Api Error");
      }
      return BreedListModel.fromJson(json as Map<String, dynamic>);
    }
  }

  Future<ImageByBreedModel> fetchImageByBreed(breed) async {
    final String breedtofetch = await breed;
    final response = await http.get(
      Uri.parse('https://dog.ceo/api/breed/$breedtofetch/images/random/10'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    var data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      if (kDebugMode) {
        print('image by list api sucess');
      }
      return ImageByBreedModel.fromJson(data);
    } else {
      if (kDebugMode) {
        print("Image By Breed Api Error");
      }
      return data['status'];
    }
  }

  Future<SubBreedImageModel> fetchSubByBreedRandomImage(breed, subBreed) async {
    final String breedtofetch = await breed;
    final String subBreedtofetch = await subBreed;
    final response = await http.get(
      Uri.parse(
          'https://dog.ceo/api/breed/$breedtofetch/$subBreedtofetch/images/random/10'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    var data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return SubBreedImageModel.fromJson(data);
    } else {
      if (kDebugMode) {
        print("Image By SubBreed Api Error");
      }
      return data['status'];
    }
  }
}
