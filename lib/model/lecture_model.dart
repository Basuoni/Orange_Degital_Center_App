class LectureModel {
  String? code;
  String? message;
  List<Data>? data;

  LectureModel({code, message, data});

  LectureModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['message'] = message;
    data['data'] = this.data!.map((v) => v.toJson()).toList();
    return data;
  }
}

class Data {
  int? id;
  String? lectureSubject;
  String? lectureDate;
  String? lectureStartTime;
  String? lectureEndTime;
  String? university;

  Data(
      {id,
        lectureSubject,
        lectureDate,
        lectureStartTime,
        lectureEndTime,
        university});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    lectureSubject = json['lectureSubject'];
    lectureDate = json['lectureDate'];
    lectureStartTime = json['lectureStartTime'];
    lectureEndTime = json['lectureEndTime'];
    university = json['university'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['lectureSubject'] = lectureSubject;
    data['lectureDate'] = lectureDate;
    data['lectureStartTime'] = lectureStartTime;
    data['lectureEndTime'] = lectureEndTime;
    data['university'] = university;
    return data;
  }
}