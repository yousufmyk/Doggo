class RandomDogImagesModel {
  List<String>? message;
  String? status;

  RandomDogImagesModel({this.message, this.status});

  RandomDogImagesModel.fromJson(Map<String, dynamic> json) {
    message = json['message'].cast<String>();
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['message'] = message;
    data['status'] = status;
    return data;
  }
}
