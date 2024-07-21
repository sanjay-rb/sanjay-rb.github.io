class TimelineModel {
  String? title;
  String? subTitle;
  DateTime? date;
  String? type;
  bool? isLive;
  String? link;
  List<String>? points;

  TimelineModel({
    this.title,
    this.subTitle,
    this.date,
    this.type,
    this.isLive,
    this.link,
    this.points,
  });

  TimelineModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subTitle = json['subTitle'];
    date = json['date'];
    type = json['type'];
    isLive = json['isLive'];
    link = json['link'];
    points = json['points']?.cast<String>();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['subTitle'] = subTitle;
    data['date'] = date;
    data['type'] = type;
    data['isLive'] = isLive;
    data['link'] = link;
    data['points'] = points;
    return data;
  }
}
