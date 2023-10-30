import 'package:doggo/Models/AllBreedListModel.dart';
import 'package:doggo/Models/RandomDogImageModel.dart';
import 'package:doggo/Models/SubBreedImageModel.dart';
import 'package:flutter_test/flutter_test.dart' show expect, group, test;

void main() {
  group('Unit Testing BreedListModel Class', () {
    test('Creates BreedListModel from JSON', () {
      final json = {
        'message': ['breed1', 'breed2'],
        'status': 'success'
      };

      final model = BreedListModel.fromJson(json);

      expect(model.message, ['breed1', 'breed2']);
      expect(model.status, 'success');
    });

    test('toJson() should return correct map', () {
      final model = BreedListModel(
        message: ['breed1', 'breed2'],
        status: 'success',
      );

      final json = model.toJson();

      expect(json['message'], ['breed1', 'breed2']);
      expect(json['status'], 'success');
    });
  });

  group('Unit Testing RandomDogImagesModel Class', () {
    // Test model creation from JSON
    test('Creates model from JSON', () {
      final json = {
        'message': [
          'https://images.dog.ceo/breeds/akita/512px-Akita_inu.jpg',
          'https://images.dog.ceo/breeds/deerhound-scottish/n02092002_1646.jpg',
        ],
        'status': 'success'
      };

      final model = RandomDogImagesModel.fromJson(json);

      expect(model.message, [
        'https://images.dog.ceo/breeds/akita/512px-Akita_inu.jpg',
        'https://images.dog.ceo/breeds/deerhound-scottish/n02092002_1646.jpg',
      ]);
      expect(model.status, 'success');
    });

// Test toJson() method
    test('toJson() returns proper map', () {
      final model = RandomDogImagesModel(message: [
        'https://images.dog.ceo/breeds/akita/512px-Akita_inu.jpg',
        'https://images.dog.ceo/breeds/deerhound-scottish/n02092002_1646.jpg',
      ], status: 'success');

      final json = model.toJson();

      expect(json['message'], [
        'https://images.dog.ceo/breeds/akita/512px-Akita_inu.jpg',
        'https://images.dog.ceo/breeds/deerhound-scottish/n02092002_1646.jpg',
      ]);
      expect(json['status'], 'success');
    });
  });

  group('Unit Testing SubBreedImageModel Class', () {
    // Test model creation from JSON
    test('Creates from JSON', () {
      final json = {
        'message': ['img1.jpg', 'img2.png'],
        'status': 'success'
      };

      final model = SubBreedImageModel.fromJson(json);

      expect(model.message, ['img1.jpg', 'img2.png']);
      expect(model.status, 'success');
    });

// Test toJson()
    test('toJson() returns proper map', () {
      final model = SubBreedImageModel(
          message: ['img1.jpg', 'img2.png'], status: 'success');

      final json = model.toJson();

      expect(json['message'], ['img1.jpg', 'img2.png']);
      expect(json['status'], 'success');
    });
  });
}
