class UserConfiguration {
  String? message;
  Data? data;
  int? code;
  bool? success;

  UserConfiguration({this.message, this.data, this.code, this.success});

  UserConfiguration.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    code = json['code'];
    success = json['success'];
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
  int? superAdmin;
  Permissions? permissions;

  Data({this.superAdmin, this.permissions});

  Data.fromJson(Map<String, dynamic> json) {
    superAdmin = json['super_admin'];
    permissions = json['permissions'] != null
        ? Permissions.fromJson(json['permissions'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['super_admin'] = superAdmin;
    if (permissions != null) {
      data['permissions'] = permissions!.toJson();
    }
    return data;
  }
}

class Permissions {
  Users? users;
  AcademicYears? academicYears;
  AcademicYears? messages;
  Leads? leads;
  ContentView? contentView;

  Permissions(
      {this.users,
      this.academicYears,
      this.messages,
      this.leads,
      this.contentView});

  Permissions.fromJson(Map<String, dynamic> json) {
    users = json['users'] != null ? Users.fromJson(json['users']) : null;
    academicYears = json['academic_years'] != null
        ? AcademicYears.fromJson(json['academic_years'])
        : null;
    messages = json['messages'] != null
        ? AcademicYears.fromJson(json['messages'])
        : null;
    leads = json['leads'] != null ? Leads.fromJson(json['leads']) : null;
    contentView = json['content_view'] != null
        ? ContentView.fromJson(json['content_view'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (users != null) {
      data['users'] = users!.toJson();
    }
    if (academicYears != null) {
      data['academic_years'] = academicYears!.toJson();
    }
    if (messages != null) {
      data['messages'] = messages!.toJson();
    }
    if (leads != null) {
      data['leads'] = leads!.toJson();
    }
    if (contentView != null) {
      data['content_view'] = contentView!.toJson();
    }
    return data;
  }
}

class Users {
  int? viewMasters;
  int? viewListing;
  int? viewPassword;
  int? sendMail;
  int? resetPassword;
  int? add;
  int? edit;

  Users(
      {this.viewMasters,
      this.viewListing,
      this.viewPassword,
      this.sendMail,
      this.resetPassword,
      this.add,
      this.edit});

  Users.fromJson(Map<String, dynamic> json) {
    viewMasters = json['view_masters'];
    viewListing = json['view_listing'];
    viewPassword = json['view_password'];
    sendMail = json['send_mail'];
    resetPassword = json['reset_password'];
    add = json['add'];
    edit = json['edit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['view_masters'] = viewMasters;
    data['view_listing'] = viewListing;
    data['view_password'] = viewPassword;
    data['send_mail'] = sendMail;
    data['reset_password'] = resetPassword;
    data['add'] = add;
    data['edit'] = edit;
    return data;
  }
}

class AcademicYears {
  int? viewMasters;
  int? viewListing;
  int? add;
  int? edit;

  AcademicYears({this.viewMasters, this.viewListing, this.add, this.edit});

  AcademicYears.fromJson(Map<String, dynamic> json) {
    viewMasters = json['view_masters'];
    viewListing = json['view_listing'];
    add = json['add'];
    edit = json['edit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['view_masters'] = viewMasters;
    data['view_listing'] = viewListing;
    data['add'] = add;
    data['edit'] = edit;
    return data;
  }
}

class Leads {
  int? viewListing;
  int? add;
  int? edit;
  int? followUpListing;
  int? followUpAdd;
  int? followUpEdit;

  Leads(
      {this.viewListing,
      this.add,
      this.edit,
      this.followUpListing,
      this.followUpAdd,
      this.followUpEdit});

  Leads.fromJson(Map<String, dynamic> json) {
    viewListing = json['view_listing'];
    add = json['add'];
    edit = json['edit'];
    followUpListing = json['follow_up_listing'];
    followUpAdd = json['follow_up_add'];
    followUpEdit = json['follow_up_edit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['view_listing'] = viewListing;
    data['add'] = add;
    data['edit'] = edit;
    data['follow_up_listing'] = followUpListing;
    data['follow_up_add'] = followUpAdd;
    data['follow_up_edit'] = followUpEdit;
    return data;
  }
}

class ContentView {
  int? viewListing;

  ContentView({this.viewListing});

  ContentView.fromJson(Map<String, dynamic> json) {
    viewListing = json['view_listing'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['view_listing'] = viewListing;
    return data;
  }
}
