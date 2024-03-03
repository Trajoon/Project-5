class Movie {
  Movie({
    required this.id,
    required this.AgeClassification,
    required this.title,
    required this.subTitle,
    required this.type,
    required this.summary,
    required this.crew,
    required this.date,
    required this.duration,
    required this.displayImg,
    required this.img,
    required this.language,
    required this.experience
  });
  late final int id;
  late final String AgeClassification;
  late final String title;
  late final String subTitle;
  late final String type;
  late final String summary;
  late final String crew;
  late final String date;
  late final String duration;
  late final String displayImg;
  late final String img;
  late final String language;
  late final String experience;

  Movie.fromJson(Map<String, dynamic> json) {
    id = json['ID'];
    AgeClassification = json['AgeClassification'];
    title = json['title'];
    subTitle = json['subTitle'];
    type = json['type'];
    summary = json['summary'];
    crew = json['crew'];
    date = json['date'];
    duration = json['duration'];
    displayImg = json['displayImg'];
    img = json['img'];
    language = json['language'];
    experience = json['experience'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['ID'] = id;
    _data['AgeClassification'] = AgeClassification;
    _data['title'] = title;
    _data['subTitle'] = subTitle;
    _data['type'] = type;
    _data['summary'] = summary;
    _data['crew'] = crew;
    _data['date'] = date;
    _data['duration'] = duration;
    _data['displayImg'] = displayImg;
    _data['img'] = img;
    _data['language'] = language;
    _data['experience'] = experience;
    return _data;
  }
}
