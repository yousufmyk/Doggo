class ImageByBreedModel {
  List<String>? message;
  String? status;

  ImageByBreedModel({this.message, this.status});

  ImageByBreedModel.fromJson(Map<String, dynamic> json) {
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