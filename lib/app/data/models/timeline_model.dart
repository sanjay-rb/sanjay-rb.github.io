class TimelineModel {
  String? title;
  String? subTitle;
  DateTime? date;
  DateTime? endDate;
  String? type;
  String? link;
  List<String>? points;

  TimelineModel({
    this.title,
    this.subTitle,
    this.date,
    this.endDate,
    this.type,
    this.link,
    this.points,
  });

  TimelineModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subTitle = json['subTitle'];
    date = json['date'];
    endDate = json['endDate'];
    type = json['type'];
    link = json['link'];
    points = json['points']?.cast<String>();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['subTitle'] = subTitle;
    data['date'] = date;
    data['endDate'] = endDate;
    data['type'] = type;
    data['link'] = link;
    data['points'] = points;
    return data;
  }
}
