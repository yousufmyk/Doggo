import 'message.dart';

class BreedList {
  Message? message;
  String? status;

  BreedList({this.message, this.status});

  factory BreedList.fromJson(Map<dynamic, dynamic> json) => BreedList(
        message: json['message'] == null
            ? null
            : Message.fromJson(json['message'] as Map<String, dynamic>),
        status: json['status'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'message': message?.toJson(),
        'status': status,
      };
}
