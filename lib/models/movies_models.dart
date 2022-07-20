class Movies {

  double? averageRating;
  String? backdropPath;
  // late final Comments comments;
  CreatedBy? createdBy;
  String? description;
  int? id;
  String? iso_3166_1;
  String? iso_639_1;
  String? name;
  // late final ObjectIds objectIds;
  int? page;
  String? posterPath;
  bool? public;
  List<Results>? results;
  int? revenue;
  int? runtime;
  String? sortBy;
  int? totalPages;
  int? totalResults;

  Movies.fromJson(Map<String, dynamic> json){
    averageRating = json['average_rating'];
    backdropPath = json['backdrop_path'];
    // comments = Comments.fromJson(json['comments']);
    createdBy = CreatedBy.fromJson(json['created_by']);
    description = json['description'];
    id = json['id'];
    iso_3166_1 = json['iso_3166_1'];
    iso_639_1 = json['iso_639_1'];
    name = json['name'];
    // objectIds = ObjectIds.fromJson(json['object_ids']);
    page = json['page'];
    posterPath = json['poster_path'];
    public = json['public'];
    results = List.from(json['results']).map((e)=>Results.fromJson(e)).toList();
    revenue = json['revenue'];
    runtime = json['runtime'];
    sortBy = json['sort_by'];
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['average_rating'] = averageRating;
    data['backdrop_path'] = backdropPath;
    // _data['comments'] = comments.toJson();
    data['created_by'] = createdBy!.toJson();
    data['description'] = description;
    data['id'] = id;
    data['iso_3166_1'] = iso_3166_1;
    data['iso_639_1'] = iso_639_1;
    data['name'] = name;
    // _data['object_ids'] = objectIds.toJson();
    data['page'] = page;
    data['poster_path'] = posterPath;
    data['public'] = public;
    data['results'] = results!.map((e)=>e.toJson()).toList();
    data['revenue'] = revenue;
    data['runtime'] = runtime;
    data['sort_by'] = sortBy;
    data['total_pages'] = totalPages;
    data['total_results'] = totalResults;
    return data;
  }

//<editor-fold desc="Data Methods">

  Movies({
    required this.averageRating,
    required this.backdropPath,
    required this.createdBy,
    required this.description,
    required this.id,
    required this.iso_3166_1,
    required this.iso_639_1,
    required this.name,
    required this.page,
    required this.posterPath,
    required this.public,
    required this.results,
    required this.revenue,
    required this.runtime,
    required this.sortBy,
    required this.totalPages,
    required this.totalResults,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Movies &&
          runtimeType == other.runtimeType &&
          averageRating == other.averageRating &&
          backdropPath == other.backdropPath &&
          createdBy == other.createdBy &&
          description == other.description &&
          id == other.id &&
          iso_3166_1 == other.iso_3166_1 &&
          iso_639_1 == other.iso_639_1 &&
          name == other.name &&
          page == other.page &&
          posterPath == other.posterPath &&
          public == other.public &&
          results == other.results &&
          revenue == other.revenue &&
          runtime == other.runtime &&
          sortBy == other.sortBy &&
          totalPages == other.totalPages &&
          totalResults == other.totalResults);

  @override
  int get hashCode =>
      averageRating.hashCode ^
      backdropPath.hashCode ^
      createdBy.hashCode ^
      description.hashCode ^
      id.hashCode ^
      iso_3166_1.hashCode ^
      iso_639_1.hashCode ^
      name.hashCode ^
      page.hashCode ^
      posterPath.hashCode ^
      public.hashCode ^
      results.hashCode ^
      revenue.hashCode ^
      runtime.hashCode ^
      sortBy.hashCode ^
      totalPages.hashCode ^
      totalResults.hashCode;

  @override
  String toString() {
    return 'Movies{ averageRating: $averageRating, backdropPath: $backdropPath, createdBy: $createdBy, description: $description, id: $id, iso_3166_1: $iso_3166_1, iso_639_1: $iso_639_1, name: $name, page: $page, posterPath: $posterPath, public: $public, results: $results, revenue: $revenue, runtime: $runtime, sortBy: $sortBy, totalPages: $totalPages, totalResults: $totalResults,}';
  }

  Movies copyWith({
    double? averageRating,
    String? backdropPath,
    CreatedBy? createdBy,
    String? description,
    int? id,
    String? iso_3166_1,
    String? iso_639_1,
    String? name,
    int? page,
    String? posterPath,
    bool? public,
    List<Results>? results,
    int? revenue,
    int? runtime,
    String? sortBy,
    int? totalPages,
    int? totalResults,
  }) {
    return Movies(
      averageRating: averageRating ?? this.averageRating,
      backdropPath: backdropPath ?? this.backdropPath,
      createdBy: createdBy ?? this.createdBy,
      description: description ?? this.description,
      id: id ?? this.id,
      iso_3166_1: iso_3166_1 ?? this.iso_3166_1,
      iso_639_1: iso_639_1 ?? this.iso_639_1,
      name: name ?? this.name,
      page: page ?? this.page,
      posterPath: posterPath ?? this.posterPath,
      public: public ?? this.public,
      results: results ?? this.results,
      revenue: revenue ?? this.revenue,
      runtime: runtime ?? this.runtime,
      sortBy: sortBy ?? this.sortBy,
      totalPages: totalPages ?? this.totalPages,
      totalResults: totalResults ?? this.totalResults,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'averageRating': averageRating,
      'backdropPath': backdropPath,
      'createdBy': createdBy,
      'description': description,
      'id': id,
      'iso_3166_1': iso_3166_1,
      'iso_639_1': iso_639_1,
      'name': name,
      'page': page,
      'posterPath': posterPath,
      'public': public,
      'results': results,
      'revenue': revenue,
      'runtime': runtime,
      'sortBy': sortBy,
      'totalPages': totalPages,
      'totalResults': totalResults,
    };
  }

  factory Movies.fromMap(Map<String, dynamic> map) {
    return Movies(
      averageRating: map['averageRating'] as double,
      backdropPath: map['backdropPath'] as String,
      createdBy: map['createdBy'] as CreatedBy,
      description: map['description'] as String,
      id: map['id'] as int,
      iso_3166_1: map['iso_3166_1'] as String,
      iso_639_1: map['iso_639_1'] as String,
      name: map['name'] as String,
      page: map['page'] as int,
      posterPath: map['posterPath'] as String,
      public: map['public'] as bool,
      results: map['results'] as List<Results>,
      revenue: map['revenue'] as int,
      runtime: map['runtime'] as int,
      sortBy: map['sortBy'] as String,
      totalPages: map['totalPages'] as int,
      totalResults: map['totalResults'] as int,
    );
  }

//</editor-fold>
}

class CreatedBy {
  CreatedBy({
    required this.gravatarHash,
    required this.id,
    required this.name,
    required this.username,
  });
  late final String gravatarHash;
  late final String id;
  late final String name;
  late final String username;

  CreatedBy.fromJson(Map<String, dynamic> json){
    gravatarHash = json['gravatar_hash'];
    id = json['id'];
    name = json['name'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['gravatar_hash'] = gravatarHash;
    data['id'] = id;
    data['name'] = name;
    data['username'] = username;
    return data;
  }
}

class Results {
  bool? adult;
  String? backdropPath;
  List<int>? genreIds;
  int? id;
  String? mediaType;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  String? releaseDate;
  String? title;
  bool? video;
  num? voteAverage;
  int? voteCount;

  Results.fromJson(Map<String, dynamic> json){
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    genreIds = List.castFrom<dynamic, int>(json['genre_ids']);
    id = json['id'];
    mediaType = json['media_type'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['adult'] = adult;
    data['backdrop_path'] = backdropPath;
    data['genre_ids'] = genreIds;
    data['id'] = id;
    data['media_type'] = mediaType;
    data['original_language'] = originalLanguage;
    data['original_title'] = originalTitle;
    data['overview'] = overview;
    data['popularity'] = popularity;
    data['poster_path'] = posterPath;
    data['release_date'] = releaseDate;
    data['title'] = title;
    data['video'] = video;
    data['vote_average'] = voteAverage;
    data['vote_count'] = voteCount;
    return data;
  }

//<editor-fold desc="Data Methods">

  Results({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.mediaType,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    this.voteAverage,
    required this.voteCount,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Results &&
          runtimeType == other.runtimeType &&
          adult == other.adult &&
          backdropPath == other.backdropPath &&
          genreIds == other.genreIds &&
          id == other.id &&
          mediaType == other.mediaType &&
          originalLanguage == other.originalLanguage &&
          originalTitle == other.originalTitle &&
          overview == other.overview &&
          popularity == other.popularity &&
          posterPath == other.posterPath &&
          releaseDate == other.releaseDate &&
          title == other.title &&
          video == other.video &&
          voteAverage == other.voteAverage &&
          voteCount == other.voteCount);

  @override
  int get hashCode =>
      adult.hashCode ^
      backdropPath.hashCode ^
      genreIds.hashCode ^
      id.hashCode ^
      mediaType.hashCode ^
      originalLanguage.hashCode ^
      originalTitle.hashCode ^
      overview.hashCode ^
      popularity.hashCode ^
      posterPath.hashCode ^
      releaseDate.hashCode ^
      title.hashCode ^
      video.hashCode ^
      voteAverage.hashCode ^
      voteCount.hashCode;

  @override
  String toString() {
    return 'Results{ adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, mediaType: $mediaType, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount,}';
  }

  Results copyWith({
    bool? adult,
    String? backdropPath,
    List<int>? genreIds,
    int? id,
    String? mediaType,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    String? releaseDate,
    String? title,
    bool? video,
    num? voteAverage,
    int? voteCount,
  }) {
    return Results(
      adult: adult ?? this.adult,
      backdropPath: backdropPath ?? this.backdropPath,
      genreIds: genreIds ?? this.genreIds,
      id: id ?? this.id,
      mediaType: mediaType ?? this.mediaType,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      originalTitle: originalTitle ?? this.originalTitle,
      overview: overview ?? this.overview,
      popularity: popularity ?? this.popularity,
      posterPath: posterPath ?? this.posterPath,
      releaseDate: releaseDate ?? this.releaseDate,
      title: title ?? this.title,
      video: video ?? this.video,
      voteAverage: voteAverage ?? this.voteAverage,
      voteCount: voteCount ?? this.voteCount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'adult': adult,
      'backdropPath': backdropPath,
      'genreIds': genreIds,
      'id': id,
      'mediaType': mediaType,
      'originalLanguage': originalLanguage,
      'originalTitle': originalTitle,
      'overview': overview,
      'popularity': popularity,
      'posterPath': posterPath,
      'releaseDate': releaseDate,
      'title': title,
      'video': video,
      'voteAverage': voteAverage,
      'voteCount': voteCount,
    };
  }

  factory Results.fromMap(Map<String, dynamic> map) {
    return Results(
      adult: map['adult'] as bool,
      backdropPath: map['backdropPath'] as String,
      genreIds: map['genreIds'] as List<int>,
      id: map['id'] as int,
      mediaType: map['mediaType'] as String,
      originalLanguage: map['originalLanguage'] as String,
      originalTitle: map['originalTitle'] as String,
      overview: map['overview'] as String,
      popularity: map['popularity'] as double,
      posterPath: map['posterPath'] as String,
      releaseDate: map['releaseDate'] as String,
      title: map['title'] as String,
      video: map['video'] as bool,
      voteAverage: map['voteAverage'] as num,
      voteCount: map['voteCount'] as int,
    );
  }

//</editor-fold>
}

class Search {
  Search({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });
  late final int page;
  late final List<Results> results;
  late final int totalPages;
  late final int totalResults;

  Search.fromJson(Map<String, dynamic> json){
    page = json['page'];
    results = List.from(json['results']).map((e)=>Results.fromJson(e)).toList();
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['page'] = page;
    _data['results'] = results.map((e)=>e.toJson()).toList();
    _data['total_pages'] = totalPages;
    _data['total_results'] = totalResults;
    return _data;
  }
}

class SearchResults {
  SearchResults({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });
  late final bool adult;
  late final String backdropPath;
  late final List<int> genreIds;
  late final int id;
  late final String originalLanguage;
  late final String originalTitle;
  late final String overview;
  late final double popularity;
  late final String posterPath;
  late final String releaseDate;
  late final String title;
  late final bool video;
  late final double? voteAverage;
  late final int voteCount;

  SearchResults.fromJson(Map<String, dynamic> json){
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    genreIds = List.castFrom<dynamic, int>(json['genre_ids']);
    id = json['id'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['adult'] = adult;
    _data['backdrop_path'] = backdropPath;
    _data['genre_ids'] = genreIds;
    _data['id'] = id;
    _data['original_language'] = originalLanguage;
    _data['original_title'] = originalTitle;
    _data['overview'] = overview;
    _data['popularity'] = popularity;
    _data['poster_path'] = posterPath;
    _data['release_date'] = releaseDate;
    _data['title'] = title;
    _data['video'] = video;
    _data['vote_average'] = voteAverage;
    _data['vote_count'] = voteCount;
    return _data;
  }
}