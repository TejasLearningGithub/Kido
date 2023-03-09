class LogoutModel {
  String? message;
  Null data;
  int? code;
  bool? success;

  LogoutModel({this.message, this.data, this.code, this.success});

  LogoutModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'];
    code = json['code'];
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] =message;
    data['data'] = data;
    data['code'] = code;
    data['success'] = success;
    return data;
  }
}
