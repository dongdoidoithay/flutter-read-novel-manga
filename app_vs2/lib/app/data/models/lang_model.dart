class LangModel {
  String? id;
  String? name;
  String? icon;
  String? lang;
  String? type;

  LangModel({this.id, this.name, this.icon, this.lang, this.type});

  LangModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    icon = json['icon'];
    lang = json['lang'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['icon'] = icon;
    data['lang'] = lang;
    data['type'] = type;
    return data;
  }
}
