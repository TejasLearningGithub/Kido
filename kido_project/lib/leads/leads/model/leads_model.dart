class LeadsModel {
  LeadsModel({
    this.message,
    this.data,
    this.code,
    this.success,
  });
  String? message;
  List<Data>? data;
  int? code;
  bool? success;

  LeadsModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = List.from(json['data']).map((e) => Data.fromJson(e)).toList();
    code = json['code'];
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final mydata = <String, dynamic>{};
    mydata['message'] = message;
    mydata['data'] = data?.map((e) => e.toJson()).toList();
    mydata['code'] = code;
    mydata['success'] = success;
    return mydata;
  }
}

class Data {
  Data({
    required this.childFirstName,
    required this.leadNo,
    required this.childDob,
    required this.childLastName,
    required this.childGender,
    required this.parentName,
    required this.statusId,
    required this.substatusId,
    required this.schoolId,
    required this.stage,
  });
  late final String childFirstName;
  late final String leadNo;
  late final String childDob;
  late final String childLastName;
  late final String childGender;
  late final String parentName;
  late final StatusId statusId;
  late final SubstatusId substatusId;
  late final SchoolId schoolId;
  late final String stage;

  Data.fromJson(Map<String, dynamic> json) {
    childFirstName = json['child_first_name'];
    leadNo = json['lead_no'];
    childDob = json['child_dob'];
    childLastName = json['child_last_name'];
    childGender = json['child_gender'];
    parentName = json['parent_name'];
    statusId = StatusId.fromJson(json['status_id']);
    substatusId = SubstatusId.fromJson(json['substatus_id']);
    schoolId = SchoolId.fromJson(json['school_id']);
    stage = json['stage'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['child_first_name'] = childFirstName;
    data['lead_no'] = leadNo;
    data['child_dob'] = childDob;
    data['child_last_name'] = childLastName;
    data['child_gender'] = childGender;
    data['parent_name'] = parentName;
    data['status_id'] = statusId.toJson();
    data['substatus_id'] = substatusId.toJson();
    data['school_id'] = schoolId.toJson();
    data['stage'] = stage;
    return data;
  }
}

class StatusId {
  StatusId({
    required this.name,
  });
  late final String name;

  StatusId.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    return data;
  }
}

class SubstatusId {
  SubstatusId({
    required this.name,
  });
  late final String name;

  SubstatusId.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    return data;
  }
}

class SchoolId {
  SchoolId({
    required this.schoolName,
  });
  late final String schoolName;

  SchoolId.fromJson(Map<String, dynamic> json) {
    schoolName = json['school_name'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['school_name'] = schoolName;
    return data;
  }
}
