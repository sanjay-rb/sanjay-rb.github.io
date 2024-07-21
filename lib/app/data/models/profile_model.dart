class ProfileModel {
  String? keyword;
  String? value;
  String? link;

  ProfileModel({this.keyword, this.value, this.link});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    keyword = json['keyword'];
    value = json['value'];
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['keyword'] = keyword;
    data['value'] = value;
    data['link'] = link;
    return data;
  }
}
