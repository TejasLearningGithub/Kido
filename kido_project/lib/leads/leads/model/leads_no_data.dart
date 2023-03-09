class LeadsNoDataFound {
  LeadsNoDataFound({
    this.message,
    this.code,
    this.status,
    this.type,
    this.path,
    this.payload,
    this.level,
    this.timestamp,
  });
  String? message;
  int? code;
  int? status;
  String? type;
  String? path;
  Payload? payload;
  String? level;
  String? timestamp;

  LeadsNoDataFound.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    code = json['code'];
    status = json['status'];
    type = json['type'];
    path = json['path'];
    payload = Payload.fromJson(json['payload']);
    level = json['level'];
    timestamp = json['timestamp'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['message'] = message;
    data['code'] = code;
    data['status'] = status;
    data['type'] = type;
    data['path'] = path;
    data['payload'] = payload?.toJson();
    data['level'] = level;
    data['timestamp'] = timestamp;
    return data;
  }
}

class Payload {
  Payload();

  Payload.fromJson(Map json);

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    return _data;
  }
}
