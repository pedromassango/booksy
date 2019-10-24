class BooksApiModel {
  String _kind;
  int _totalItems;
  List<Book> _items;

  BooksApiModel({String kind, int totalItems, List<Book> items}) {
    this._kind = kind;
    this._totalItems = totalItems;
    this._items = items;
  }

  String get kind => _kind;
  int get totalItems => _totalItems;
  List<Book> get items => _items;

  BooksApiModel.fromJson(Map<String, dynamic> json) {
    _kind = json['kind'];
    _totalItems = json['totalItems'];
    if (json['items'] != null) {
      _items = new List<Book>();
      json['items'].forEach((v) {
        _items.add(new Book.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kind'] = this._kind;
    data['totalItems'] = this._totalItems;
    if (this._items != null) {
      data['items'] = this._items.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Book {
  String _kind;
  String _id;
  String _etag;
  String _selfLink;
  VolumeInfo _volumeInfo;
  SaleInfo _saleInfo;
  AccessInfo _accessInfo;
  SearchInfo _searchInfo;

  Book(
      {String kind,
        String id,
        String etag,
        String selfLink,
        VolumeInfo volumeInfo,
        SaleInfo saleInfo,
        AccessInfo accessInfo,
        SearchInfo searchInfo}) {
    this._kind = kind;
    this._id = id;
    this._etag = etag;
    this._selfLink = selfLink;
    this._volumeInfo = volumeInfo;
    this._saleInfo = saleInfo;
    this._accessInfo = accessInfo;
    this._searchInfo = searchInfo;
  }

  String get kind => _kind;
  String get id => _id;
  String get etag => _etag;
  String get selfLink => _selfLink;
  VolumeInfo get volumeInfo => _volumeInfo;
  SaleInfo get saleInfo => _saleInfo;
  AccessInfo get accessInfo => _accessInfo;
  SearchInfo get searchInfo => _searchInfo;

  Book.fromJson(Map<String, dynamic> json) {
    _kind = json['kind'];
    _id = json['id'];
    _etag = json['etag'];
    _selfLink = json['selfLink'];
    _volumeInfo = json['volumeInfo'] != null
        ? new VolumeInfo.fromJson(json['volumeInfo'])
        : null;
    _saleInfo = json['saleInfo'] != null
        ? new SaleInfo.fromJson(json['saleInfo'])
        : null;
    _accessInfo = json['accessInfo'] != null
        ? new AccessInfo.fromJson(json['accessInfo'])
        : null;
    _searchInfo = json['searchInfo'] != null
        ? new SearchInfo.fromJson(json['searchInfo'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kind'] = this._kind;
    data['id'] = this._id;
    data['etag'] = this._etag;
    data['selfLink'] = this._selfLink;
    if (this._volumeInfo != null) {
      data['volumeInfo'] = this._volumeInfo.toJson();
    }
    if (this._saleInfo != null) {
      data['saleInfo'] = this._saleInfo.toJson();
    }
    if (this._accessInfo != null) {
      data['accessInfo'] = this._accessInfo.toJson();
    }
    if (this._searchInfo != null) {
      data['searchInfo'] = this._searchInfo.toJson();
    }
    return data;
  }
}

class VolumeInfo {
  String _title;
  List<String> _authors;
  String _publisher;
  String _description;
  List<IndustryIdentifiers> _industryIdentifiers;
  ReadingModes _readingModes;
  int _pageCount;
  String _printType;
  double _averageRating;
  int _ratingsCount;
  String _maturityRating;
  bool _allowAnonLogging;
  String _contentVersion;
  ImageLinks _imageLinks;
  String _language;
  String _previewLink;
  String _infoLink;
  String _canonicalVolumeLink;

  VolumeInfo(
      {String title,
        List<String> authors,
        String publisher,
        String description,
        List<IndustryIdentifiers> industryIdentifiers,
        ReadingModes readingModes,
        int pageCount,
        String printType,
        double averageRating,
        int ratingsCount,
        String maturityRating,
        bool allowAnonLogging,
        String contentVersion,
        ImageLinks imageLinks,
        String language,
        String previewLink,
        String infoLink,
        String canonicalVolumeLink}) {
    this._title = title;
    this._authors = authors;
    this._publisher = publisher;
    this._description = description;
    this._industryIdentifiers = industryIdentifiers;
    this._readingModes = readingModes;
    this._pageCount = pageCount;
    this._printType = printType;
    this._averageRating = averageRating;
    this._ratingsCount = ratingsCount;
    this._maturityRating = maturityRating;
    this._allowAnonLogging = allowAnonLogging;
    this._contentVersion = contentVersion;
    this._imageLinks = imageLinks;
    this._language = language;
    this._previewLink = previewLink;
    this._infoLink = infoLink;
    this._canonicalVolumeLink = canonicalVolumeLink;
  }

  String get title => _title;
  List<String> get authors => _authors;
  String get publisher => _publisher;
  String get description => _description;
  ReadingModes get readingModes => _readingModes;
  int get pageCount => _pageCount;
  String get printType => _printType;
  double get averageRating => _averageRating;
  int get ratingsCount => _ratingsCount;
  String get maturityRating => _maturityRating;
  bool get allowAnonLogging => _allowAnonLogging;
  String get contentVersion => _contentVersion;
  ImageLinks get imageLinks => _imageLinks;
  String get language => _language;
  String get previewLink => _previewLink;
  String get infoLink => _infoLink;
  String get canonicalVolumeLink => _canonicalVolumeLink;

  VolumeInfo.fromJson(Map<String, dynamic> json) {
    _title = json['title'];
    _authors = json['authors'].cast<String>();
    _publisher = json['publisher'];
    _description = json['description'];
    if (json['industryIdentifiers'] != null) {
      _industryIdentifiers = new List<IndustryIdentifiers>();
      json['industryIdentifiers'].forEach((v) {
        _industryIdentifiers.add(new IndustryIdentifiers.fromJson(v));
      });
    }
    _readingModes = json['readingModes'] != null
        ? new ReadingModes.fromJson(json['readingModes'])
        : null;
    _pageCount = json['pageCount'];
    _printType = json['printType'];
    _averageRating = json['averageRating'];
    _ratingsCount = json['ratingsCount'];
    _maturityRating = json['maturityRating'];
    _allowAnonLogging = json['allowAnonLogging'];
    _contentVersion = json['contentVersion'];
    _imageLinks = json['imageLinks'] != null
        ? new ImageLinks.fromJson(json['imageLinks'])
        : null;
    _language = json['language'];
    _previewLink = json['previewLink'];
    _infoLink = json['infoLink'];
    _canonicalVolumeLink = json['canonicalVolumeLink'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this._title;
    data['authors'] = this._authors;
    data['publisher'] = this._publisher;
    data['description'] = this._description;
    if (this._industryIdentifiers != null) {
      data['industryIdentifiers'] =
          this._industryIdentifiers.map((v) => v.toJson()).toList();
    }
    if (this._readingModes != null) {
      data['readingModes'] = this._readingModes.toJson();
    }
    data['pageCount'] = this._pageCount;
    data['printType'] = this._printType;
    data['averageRating'] = this._averageRating;
    data['ratingsCount'] = this._ratingsCount;
    data['maturityRating'] = this._maturityRating;
    data['allowAnonLogging'] = this._allowAnonLogging;
    data['contentVersion'] = this._contentVersion;
    if (this._imageLinks != null) {
      data['imageLinks'] = this._imageLinks.toJson();
    }
    data['language'] = this._language;
    data['previewLink'] = this._previewLink;
    data['infoLink'] = this._infoLink;
    data['canonicalVolumeLink'] = this._canonicalVolumeLink;
    return data;
  }
}

class IndustryIdentifiers {
  String _type;
  String _identifier;

  IndustryIdentifiers({String type, String identifier}) {
    this._type = type;
    this._identifier = identifier;
  }

  String get type => _type;
  String get identifier => _identifier;

  IndustryIdentifiers.fromJson(Map<String, dynamic> json) {
    _type = json['type'];
    _identifier = json['identifier'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this._type;
    data['identifier'] = this._identifier;
    return data;
  }
}

class ReadingModes {
  bool _text;
  bool _image;

  ReadingModes({bool text, bool image}) {
    this._text = text;
    this._image = image;
  }

  bool get text => _text;
  bool get image => _image;

  ReadingModes.fromJson(Map<String, dynamic> json) {
    _text = json['text'];
    _image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this._text;
    data['image'] = this._image;
    return data;
  }
}

class ImageLinks {
  String _smallThumbnail;
  String _thumbnail;

  ImageLinks({String smallThumbnail, String thumbnail}) {
    this._smallThumbnail = smallThumbnail;
    this._thumbnail = thumbnail;
  }

  String get smallThumbnail => _smallThumbnail;
  String get thumbnail => _thumbnail;

  ImageLinks.fromJson(Map<String, dynamic> json) {
    _smallThumbnail = json['smallThumbnail'];
    _thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['smallThumbnail'] = this._smallThumbnail;
    data['thumbnail'] = this._thumbnail;
    return data;
  }
}

class SaleInfo {
  String _country;
  String _saleability;
  bool _isEbook;

  SaleInfo({String country, String saleability, bool isEbook}) {
    this._country = country;
    this._saleability = saleability;
    this._isEbook = isEbook;
  }

  String get country => _country;
  String get saleability => _saleability;
  bool get isEbook => _isEbook;

  SaleInfo.fromJson(Map<String, dynamic> json) {
    _country = json['country'];
    _saleability = json['saleability'];
    _isEbook = json['isEbook'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country'] = this._country;
    data['saleability'] = this._saleability;
    data['isEbook'] = this._isEbook;
    return data;
  }
}

class AccessInfo {
  String _country;
  String _viewability;
  bool _embeddable;
  bool _publicDomain;
  String _textToSpeechPermission;
  Epub _epub;
  Pdf _pdf;
  String _webReaderLink;
  String _accessViewStatus;
  bool _quoteSharingAllowed;

  AccessInfo(
      {String country,
        String viewability,
        bool embeddable,
        bool publicDomain,
        String textToSpeechPermission,
        Epub epub,
        Pdf pdf,
        String webReaderLink,
        String accessViewStatus,
        bool quoteSharingAllowed}) {
    this._country = country;
    this._viewability = viewability;
    this._embeddable = embeddable;
    this._publicDomain = publicDomain;
    this._textToSpeechPermission = textToSpeechPermission;
    this._epub = epub;
    this._pdf = pdf;
    this._webReaderLink = webReaderLink;
    this._accessViewStatus = accessViewStatus;
    this._quoteSharingAllowed = quoteSharingAllowed;
  }

  String get country => _country;
  String get viewability => _viewability;
  bool get embeddable => _embeddable;
  bool get publicDomain => _publicDomain;
  String get textToSpeechPermission => _textToSpeechPermission;
  Epub get epub => _epub;
  Pdf get pdf => _pdf;
  String get webReaderLink => _webReaderLink;
  String get accessViewStatus => _accessViewStatus;
  bool get quoteSharingAllowed => _quoteSharingAllowed;

  AccessInfo.fromJson(Map<String, dynamic> json) {
    _country = json['country'];
    _viewability = json['viewability'];
    _embeddable = json['embeddable'];
    _publicDomain = json['publicDomain'];
    _textToSpeechPermission = json['textToSpeechPermission'];
    _epub = json['epub'] != null ? new Epub.fromJson(json['epub']) : null;
    _pdf = json['pdf'] != null ? new Pdf.fromJson(json['pdf']) : null;
    _webReaderLink = json['webReaderLink'];
    _accessViewStatus = json['accessViewStatus'];
    _quoteSharingAllowed = json['quoteSharingAllowed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country'] = this._country;
    data['viewability'] = this._viewability;
    data['embeddable'] = this._embeddable;
    data['publicDomain'] = this._publicDomain;
    data['textToSpeechPermission'] = this._textToSpeechPermission;
    if (this._epub != null) {
      data['epub'] = this._epub.toJson();
    }
    if (this._pdf != null) {
      data['pdf'] = this._pdf.toJson();
    }
    data['webReaderLink'] = this._webReaderLink;
    data['accessViewStatus'] = this._accessViewStatus;
    data['quoteSharingAllowed'] = this._quoteSharingAllowed;
    return data;
  }
}

class Epub {
  bool _isAvailable;

  Epub({bool isAvailable}) {
    this._isAvailable = isAvailable;
  }

  bool get isAvailable => _isAvailable;

  Epub.fromJson(Map<String, dynamic> json) {
    _isAvailable = json['isAvailable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isAvailable'] = this._isAvailable;
    return data;
  }
}

class Pdf {
  bool _isAvailable;

  Pdf({bool isAvailable}) {
    this._isAvailable = isAvailable;
  }

  bool get isAvailable => _isAvailable;

  Pdf.fromJson(Map<String, dynamic> json) {
    _isAvailable = json['isAvailable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isAvailable'] = this._isAvailable;
    return data;
  }
}

class SearchInfo {
  String _textSnippet;

  SearchInfo({String textSnippet}) {
    this._textSnippet = textSnippet;
  }

  String get textSnippet => _textSnippet;

  SearchInfo.fromJson(Map<String, dynamic> json) {
    _textSnippet = json['textSnippet'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['textSnippet'] = this._textSnippet;
    return data;
  }
}
