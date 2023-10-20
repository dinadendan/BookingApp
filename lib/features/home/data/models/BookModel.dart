import 'VolumeInfo.dart';
import 'SaleInfo.dart';
import 'AccessInfo.dart';
import 'SearchInfo.dart';

/// kind : "books#volume"
/// id : "u13hVoYVZa8C"
/// etag : "dctBdOmLD2g"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/u13hVoYVZa8C"
/// volumeInfo : {"title":"Planning Extreme Programming","authors":["Kent Beck","Martin Fowler"],"publisher":"Addison-Wesley Professional","publishedDate":"2001","description":"Without careful ongoing planning, the software development process can fall apart. Extreme Programming (XP) is a new programming discipline, or methodology, that is geared toward the way that the vast majority of software development projects are handled -- in small teams. In this new book, noted software engineers Kent Beck and Martin Fowler show the reader how to properly plan a software development project with XP in mind. The authors lay out a proven strategy that forces the reader to plan as their software project unfolds, and therefore avoid many of the nasty problems that can potentially spring up along the way.","industryIdentifiers":[{"type":"ISBN_10","identifier":"0201710919"},{"type":"ISBN_13","identifier":"9780201710915"}],"readingModes":{"text":false,"image":true},"pageCount":162,"printType":"BOOK","categories":["Computers"],"averageRating":4,"ratingsCount":6,"maturityRating":"NOT_MATURE","allowAnonLogging":false,"contentVersion":"0.2.4.0.preview.1","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=u13hVoYVZa8C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=u13hVoYVZa8C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"},"language":"en","previewLink":"http://books.google.com.eg/books?id=u13hVoYVZa8C&printsec=frontcover&dq=programming&hl=&cd=1&source=gbs_api","infoLink":"http://books.google.com.eg/books?id=u13hVoYVZa8C&dq=programming&hl=&source=gbs_api","canonicalVolumeLink":"https://books.google.com/books/about/Planning_Extreme_Programming.html?hl=&id=u13hVoYVZa8C"}
/// saleInfo : {"country":"EG","saleability":"NOT_FOR_SALE","isEbook":false}
/// accessInfo : {"country":"EG","viewability":"PARTIAL","embeddable":true,"publicDomain":false,"textToSpeechPermission":"ALLOWED_FOR_ACCESSIBILITY","epub":{"isAvailable":false},"pdf":{"isAvailable":false},"webReaderLink":"http://play.google.com/books/reader?id=u13hVoYVZa8C&hl=&source=gbs_api","accessViewStatus":"SAMPLE","quoteSharingAllowed":false}
/// searchInfo : {"textSnippet":"In this new book, noted software engineers Kent Beck and Martin Fowler show the reader how to properly plan a software development project with XP in mind."}

class BookModel {
  BookModel({
      String? kind, 
      String? id, 
      String? etag, 
      String? selfLink, 
      VolumeInfo? volumeInfo, 
      SaleInfo? saleInfo, 
      AccessInfo? accessInfo, 
      SearchInfo? searchInfo,}){
    _kind = kind;
    _id = id;
    _etag = etag;
    _selfLink = selfLink;
    _volumeInfo = volumeInfo;
    _saleInfo = saleInfo;
    _accessInfo = accessInfo;
    _searchInfo = searchInfo;
}

  BookModel.fromJson(dynamic json) {
    _kind = json['kind'];
    _id = json['id'];
    _etag = json['etag'];
    _selfLink = json['selfLink'];
    _volumeInfo = json['volumeInfo'] != null ? VolumeInfo.fromJson(json['volumeInfo']) : null;
    _saleInfo = json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    _accessInfo = json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo']) : null;
    _searchInfo = json['searchInfo'] != null ? SearchInfo.fromJson(json['searchInfo']) : null;
  }
  String? _kind;
  String? _id;
  String? _etag;
  String? _selfLink;
  VolumeInfo? _volumeInfo;
  SaleInfo? _saleInfo;
  AccessInfo? _accessInfo;
  SearchInfo? _searchInfo;

  String? get kind => _kind;
  String? get id => _id;
  String? get etag => _etag;
  String? get selfLink => _selfLink;
  VolumeInfo? get volumeInfo => _volumeInfo;
  SaleInfo? get saleInfo => _saleInfo;
  AccessInfo? get accessInfo => _accessInfo;
  SearchInfo? get searchInfo => _searchInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = _kind;
    map['id'] = _id;
    map['etag'] = _etag;
    map['selfLink'] = _selfLink;
    if (_volumeInfo != null) {
      map['volumeInfo'] = _volumeInfo?.toJson();
    }
    if (_saleInfo != null) {
      map['saleInfo'] = _saleInfo?.toJson();
    }
    if (_accessInfo != null) {
      map['accessInfo'] = _accessInfo?.toJson();
    }
    if (_searchInfo != null) {
      map['searchInfo'] = _searchInfo?.toJson();
    }
    return map;
  }

}