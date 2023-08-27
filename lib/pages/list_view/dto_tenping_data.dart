class TenpingListData {
  int? contentID;
  String? contentTitle;
  String? contentMemo;
  String? sImage;
  String? link;

  TenpingListData(
      {this.contentID,
      this.contentTitle,
      this.contentMemo,
      this.sImage,
      this.link});

  TenpingListData.fromJson(Map<String, dynamic> json) {
    contentID = json['ContentID'];
    contentTitle = json['ContentTitle'];
    contentMemo = json['ContentMemo'];
    sImage = json['SImage'];
    link = json['Link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ContentID'] = contentID;
    data['ContentTitle'] = contentTitle;
    data['ContentMemo'] = contentMemo;
    data['SImage'] = sImage;
    data['Link'] = link;
    return data;
  }
}
