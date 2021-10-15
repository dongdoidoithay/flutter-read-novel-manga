import 'package:app_vs2/core/utils/timeUtils.dart';

import 'detail_model.dart';

class Documents {
  Documents(
      {this.idDocument,
      this.idDoc,
      this.nameOther,
      this.name,
      this.nameSeo,
      this.image,
      this.auth,
      this.date,
      this.type,
      this.detailDocuments,
      this.dateText});

  final String? idDocument;
  final String? idDoc;
  final String? nameOther;
  final String? name;
  final String? nameSeo;
  final String? image;
  final String? auth;
  final DateTime? date;
  final String? dateText;
  final String? type;
  final List<DetailDocuments>? detailDocuments;

  factory Documents.fromJson(Map<String, dynamic> json) => Documents(
        idDocument: json["ID_DOCUMENT"] ?? null,
        idDoc: json["idDoc"] ?? null,
        nameOther: json["nameOther"] ?? null,
        name: json["name"] ?? null,
        nameSeo: json["nameSeo"] ?? null,
        image: json["image"] ?? null,
        auth: json["auth"] ?? null,
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        dateText:
            json["date"] == null ? null : TimeUtils.textTime(json["date"]),
        type: json["type"] ?? null,
        detailDocuments: json["detail_documents"] == null
            ? null
            : List<DetailDocuments>.from(json["detail_documents"]
                .map((x) => DetailDocuments.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "ID_DOCUMENT": idDocument ?? null,
        "idDoc": idDoc ?? null,
        "nameOther": nameOther ?? null,
        "name": name ?? null,
        "nameSeo": nameSeo ?? null,
        "image": image ?? null,
        "auth": auth ?? null,
        "date": date == null ? null : date!.toIso8601String(),
        "type": type ?? null,
        "detail_documents": detailDocuments == null
            ? null
            : List<dynamic>.from(detailDocuments!.map((x) => x.toJson())),
      };
}
