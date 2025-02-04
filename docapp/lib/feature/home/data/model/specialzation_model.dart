// class SpecializationModel {
//   String? message;
//   List<Data>? data;
//   bool? status;
//   int? code;

//   SpecializationModel({this.message, this.data, this.status, this.code});

//   SpecializationModel.fromJson(Map<String, dynamic> json) {
//     message = json['message'];
//     if (json['data'] != null) {
//       data = <Data>[];
//       json['data'].forEach((v) {
//         data!.add(new Data.fromJson(v));
//       });
//     }
//     status = json['status'];
//     code = json['code'];
//   }

//   get length => null;

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['message'] = this.message;
//     if (this.data != null) {
//       data['data'] = this.data!.map((v) => v.toJson()).toList();
//     }
//     data['status'] = this.status;
//     data['code'] = this.code;
//     return data;
//   }
// }

class DataResponse {
  int? id;
  String? name;
  List<Doctors>? doctors;

  DataResponse({this.id, this.name, this.doctors});

  DataResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['doctors'] != null) {
      doctors = <Doctors>[];
      json['doctors'].forEach((v) {
        doctors!.add(new Doctors.fromJson(v));
      });
    }
  }

  get degree => null;

  get phone => null;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    if (this.doctors != null) {
      data['doctors'] = this.doctors!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Doctors {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  String? address;
  String? description;
  String? degree;
  Specialization? specialization;
  City? city;
  int? appointPrice;
  String? startTime;
  String? endTime;

  Doctors(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.photo,
      this.gender,
      this.address,
      this.description,
      this.degree,
      this.specialization,
      this.city,
      this.appointPrice,
      this.startTime,
      this.endTime});

  Doctors.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    photo = json['photo'];
    gender = json['gender'];
    address = json['address'];
    description = json['description'];
    degree = json['degree'];
    specialization = json['specialization'] != null
        ? new Specialization.fromJson(json['specialization'])
        : null;
    city = json['city'] != null ? new City.fromJson(json['city']) : null;
    appointPrice = json['appoint_price'];
    startTime = json['start_time'];
    endTime = json['end_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['photo'] = this.photo;
    data['gender'] = this.gender;
    data['address'] = this.address;
    data['description'] = this.description;
    data['degree'] = this.degree;
    if (this.specialization != null) {
      data['specialization'] = this.specialization!.toJson();
    }
    if (this.city != null) {
      data['city'] = this.city!.toJson();
    }
    data['appoint_price'] = this.appointPrice;
    data['start_time'] = this.startTime;
    data['end_time'] = this.endTime;
    return data;
  }
}

class Specialization {
  int? id;
  String? name;

  Specialization({this.id, this.name});

  Specialization.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class City {
  int? id;
  String? name;
  Specialization? governrate;

  City({this.id, this.name, this.governrate});

  City.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    governrate = json['governrate'] != null
        ? new Specialization.fromJson(json['governrate'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    if (this.governrate != null) {
      data['governrate'] = this.governrate!.toJson();
    }
    return data;
  }
}
