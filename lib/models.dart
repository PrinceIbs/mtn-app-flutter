class Model {
  int id;
  String author;
  String url;

  Model({this.id, this.author, this.url});

  Model.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    author = json["author"];
    url = json["url"];
  }

  Map<String, dynamic> toJson() {
    return {"id": id, "author": author, "url": url};
  }
}
