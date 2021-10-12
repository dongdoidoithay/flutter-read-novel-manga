class DetailDocuments {
  DetailDocuments({
    this.idDocument,
    this.slug,
    this.idDetail,
    this.idDoc,
    this.nameChapter,
    this.nameDoc,
  });

  final String? idDocument;
  final String? slug;
  final String? idDetail;
  final String? idDoc;
  final String? nameChapter;
  final String? nameDoc;

  factory DetailDocuments.fromJson(Map<String, dynamic> json) =>
      DetailDocuments(
        idDocument: json["ID_DOCUMENT"] ?? null,
        slug: json["slug"] ?? null,
        idDetail: json["idDetail"] ?? null,
        idDoc: json["idDoc"] ?? null,
        nameChapter: json["nameChapter"] ?? null,
        nameDoc: json["nameDoc"] ?? null,
      );

  Map<String, dynamic> toJson() => {
        "ID_DOCUMENT": idDocument ?? null,
        "slug": slug ?? null,
        "idDetail": idDetail ?? null,
        "idDoc": idDoc ?? null,
        "nameChapter": nameChapter ?? null,
        "nameDoc": nameDoc ?? null,
      };
}
