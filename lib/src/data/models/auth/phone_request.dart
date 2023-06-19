class PhoneRequest {
  PhoneRequest({
    this.phone,
  });

  PhoneRequest.fromJson(dynamic json) {
    phone = json['phone'];
  }

  String? phone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['phone'] = phone;
    return map;
  }
}
