class ConfirmRequest {
  ConfirmRequest({
      this.code, 
      this.phone,});

  ConfirmRequest.fromJson(dynamic json) {
    code = json['code'];
    phone = json['phone'];
  }
  String? code;
  String? phone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['phone'] = phone;
    return map;
  }

}