class LoginModel {
  String? message;
  Data? data;
  int? code;
  bool? success;

  LoginModel({this.message, this.data, this.code, this.success});

  LoginModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    code = json['code'];
    success = json['success'] ?? false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['code'] = code;
    data['success'] = success;
    return data;
  }
}

class Data {
  String? sId;
  String? token;
  String? name;
  String? email;

  Data({this.sId, this.token, this.name, this.email});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    token = json['token'];
    name = json['name'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['token'] = token;
    data['name'] = name;
    data['email'] = email;
    return data;
  }
}
