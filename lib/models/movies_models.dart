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

// class Comments {
//   Comments({
//     this.movie:100402,
//     this.movie:10138,
//     this.movie:10195,
//     this.movie:102382,
//     this.movie:102899,
//     this.movie:10658,
//     this.movie:118340,
//     this.movie:1250,
//     this.movie:127585,
//     this.movie:13056,
//     this.movie:13995,
//     this.movie:166424,
//     this.movie:1724,
//     this.movie:1726,
//     this.movie:1771,
//     this.movie:1927,
//     this.movie:1930,
//     this.movie:1979,
//     this.movie:2080,
//     this.movie:22059,
//     this.movie:24428,
//     this.movie:246655,
//     this.movie:263115,
//     this.movie:271110,
//     this.movie:283995,
//     this.movie:284052,
//     this.movie:284053,
//     this.movie:284054,
//     this.movie:293660,
//     this.movie:299534,
//     this.movie:299536,
//     this.movie:299537,
//     this.movie:315635,
//     this.movie:363088,
//     this.movie:36586,
//     this.movie:36647,
//     this.movie:36648,
//     this.movie:36657,
//     this.movie:36658,
//     this.movie:36668,
//     this.movie:429617,
//     this.movie:49538,
//     this.movie:497698,
//     this.movie:524434,
//     this.movie:557,
//     this.movie:558,
//     this.movie:559,
//     this.movie:566525,
//     this.movie:634649,
//     this.movie:68721,
//     this.movie:71676,
//     this.movie:7220,
//     this.movie:76170,
//     this.movie:76338,
//     this.movie:8867,
//     this.movie:9480,
//     this.movie:9738,
//     this.movie:9947,
//     this.movie:99861,
//   });
//   late final Null movie:100402;
//   late final Null movie:10138;
//   late final Null movie:10195;
//   late final Null movie:102382;
//   late final Null movie:102899;
//   late final Null movie:10658;
//   late final Null movie:118340;
//   late final Null movie:1250;
//   late final Null movie:127585;
//   late final Null movie:13056;
//   late final Null movie:13995;
//   late final Null movie:166424;
//   late final Null movie:1724;
//   late final Null movie:1726;
//   late final Null movie:1771;
//   late final Null movie:1927;
//   late final Null movie:1930;
//   late final Null movie:1979;
//   late final Null movie:2080;
//   late final Null movie:22059;
//   late final Null movie:24428;
//   late final Null movie:246655;
//   late final Null movie:263115;
//   late final Null movie:271110;
//   late final Null movie:283995;
//   late final Null movie:284052;
//   late final Null movie:284053;
//   late final Null movie:284054;
//   late final Null movie:293660;
//   late final Null movie:299534;
//   late final Null movie:299536;
//   late final Null movie:299537;
//   late final Null movie:315635;
//   late final Null movie:363088;
//   late final Null movie:36586;
//   late final Null movie:36647;
//   late final Null movie:36648;
//   late final Null movie:36657;
//   late final Null movie:36658;
//   late final Null movie:36668;
//   late final Null movie:429617;
//   late final Null movie:49538;
//   late final Null movie:497698;
//   late final Null movie:524434;
//   late final Null movie:557;
//   late final Null movie:558;
//   late final Null movie:559;
//   late final Null movie:566525;
//   late final Null movie:634649;
//   late final Null movie:68721;
//   late final Null movie:71676;
//   late final Null movie:7220;
//   late final Null movie:76170;
//   late final Null movie:76338;
//   late final Null movie:8867;
//   late final Null movie:9480;
//   late final Null movie:9738;
//   late final Null movie:9947;
//   late final Null movie:99861;
//
//   Comments.fromJson(Map<String, dynamic> json){
//     movie:100402 = null;
//     movie:10138 = null;
//     movie:10195 = null;
//     movie:102382 = null;
//     movie:102899 = null;
//     movie:10658 = null;
//     movie:118340 = null;
//     movie:1250 = null;
//     movie:127585 = null;
//     movie:13056 = null;
//     movie:13995 = null;
//     movie:166424 = null;
//     movie:1724 = null;
//     movie:1726 = null;
//     movie:1771 = null;
//     movie:1927 = null;
//     movie:1930 = null;
//     movie:1979 = null;
//     movie:2080 = null;
//     movie:22059 = null;
//     movie:24428 = null;
//     movie:246655 = null;
//     movie:263115 = null;
//     movie:271110 = null;
//     movie:283995 = null;
//     movie:284052 = null;
//     movie:284053 = null;
//     movie:284054 = null;
//     movie:293660 = null;
//     movie:299534 = null;
//     movie:299536 = null;
//     movie:299537 = null;
//     movie:315635 = null;
//     movie:363088 = null;
//     movie:36586 = null;
//     movie:36647 = null;
//     movie:36648 = null;
//     movie:36657 = null;
//     movie:36658 = null;
//     movie:36668 = null;
//     movie:429617 = null;
//     movie:49538 = null;
//     movie:497698 = null;
//     movie:524434 = null;
//     movie:557 = null;
//     movie:558 = null;
//     movie:559 = null;
//     movie:566525 = null;
//     movie:634649 = null;
//     movie:68721 = null;
//     movie:71676 = null;
//     movie:7220 = null;
//     movie:76170 = null;
//     movie:76338 = null;
//     movie:8867 = null;
//     movie:9480 = null;
//     movie:9738 = null;
//     movie:9947 = null;
//     movie:99861 = null;
//   }

  // Map<String, dynamic> toJson() {
  //   final _data = <String, dynamic>{};
  //   _data['movie:100402'] = movie:100402;
  //   _data['movie:10138'] = movie:10138;
  //   _data['movie:10195'] = movie:10195;
  //   _data['movie:102382'] = movie:102382;
  //   _data['movie:102899'] = movie:102899;
  //   _data['movie:10658'] = movie:10658;
  //   _data['movie:118340'] = movie:118340;
  //   _data['movie:1250'] = movie:1250;
  //   _data['movie:127585'] = movie:127585;
  //   _data['movie:13056'] = movie:13056;
  //   _data['movie:13995'] = movie:13995;
  //   _data['movie:166424'] = movie:166424;
  //   _data['movie:1724'] = movie:1724;
  //   _data['movie:1726'] = movie:1726;
  //   _data['movie:1771'] = movie:1771;
  //   _data['movie:1927'] = movie:1927;
  //   _data['movie:1930'] = movie:1930;
  //   _data['movie:1979'] = movie:1979;
  //   _data['movie:2080'] = movie:2080;
  //   _data['movie:22059'] = movie:22059;
  //   _data['movie:24428'] = movie:24428;
  //   _data['movie:246655'] = movie:246655;
  //   _data['movie:263115'] = movie:263115;
  //   _data['movie:271110'] = movie:271110;
  //   _data['movie:283995'] = movie:283995;
  //   _data['movie:284052'] = movie:284052;
  //   _data['movie:284053'] = movie:284053;
  //   _data['movie:284054'] = movie:284054;
  //   _data['movie:293660'] = movie:293660;
  //   _data['movie:299534'] = movie:299534;
  //   _data['movie:299536'] = movie:299536;
  //   _data['movie:299537'] = movie:299537;
  //   _data['movie:315635'] = movie:315635;
  //   _data['movie:363088'] = movie:363088;
  //   _data['movie:36586'] = movie:36586;
  //   _data['movie:36647'] = movie:36647;
  //   _data['movie:36648'] = movie:36648;
  //   _data['movie:36657'] = movie:36657;
  //   _data['movie:36658'] = movie:36658;
  //   _data['movie:36668'] = movie:36668;
  //   _data['movie:429617'] = movie:429617;
  //   _data['movie:49538'] = movie:49538;
  //   _data['movie:497698'] = movie:497698;
  //   _data['movie:524434'] = movie:524434;
  //   _data['movie:557'] = movie:557;
  //   _data['movie:558'] = movie:558;
  //   _data['movie:559'] = movie:559;
  //   _data['movie:566525'] = movie:566525;
  //   _data['movie:634649'] = movie:634649;
  //   _data['movie:68721'] = movie:68721;
  //   _data['movie:71676'] = movie:71676;
  //   _data['movie:7220'] = movie:7220;
  //   _data['movie:76170'] = movie:76170;
  //   _data['movie:76338'] = movie:76338;
  //   _data['movie:8867'] = movie:8867;
  //   _data['movie:9480'] = movie:9480;
  //   _data['movie:9738'] = movie:9738;
  //   _data['movie:9947'] = movie:9947;
  //   _data['movie:99861'] = movie:99861;
  //   return _data;
  // }
// }

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

// class ObjectIds {
//   ObjectIds({
//     required this.movie:100402,
//     required this.movie:10138,
//     required this.movie:10195,
//     required this.movie:102382,
//     required this.movie:102899,
//     required this.movie:10658,
//     required this.movie:118340,
//     required this.movie:1250,
//     required this.movie:127585,
//     required this.movie:13056,
//     required this.movie:13995,
//     required this.movie:166424,
//     required this.movie:1724,
//     required this.movie:1726,
//     required this.movie:1771,
//     required this.movie:1927,
//     required this.movie:1930,
//     required this.movie:1979,
//     required this.movie:2080,
//     required this.movie:22059,
//     required this.movie:24428,
//     required this.movie:246655,
//     required this.movie:263115,
//     required this.movie:271110,
//     required this.movie:283995,
//     required this.movie:284052,
//     required this.movie:284053,
//     required this.movie:284054,
//     required this.movie:293660,
//     required this.movie:299534,
//     required this.movie:299536,
//     required this.movie:299537,
//     required this.movie:315635,
//     required this.movie:363088,
//     required this.movie:36586,
//     required this.movie:36647,
//     required this.movie:36648,
//     required this.movie:36657,
//     required this.movie:36658,
//     required this.movie:36668,
//     required this.movie:429617,
//     required this.movie:49538,
//     required this.movie:497698,
//     required this.movie:524434,
//     required this.movie:557,
//     required this.movie:558,
//     required this.movie:559,
//     required this.movie:566525,
//     required this.movie:634649,
//     required this.movie:68721,
//     required this.movie:71676,
//     required this.movie:7220,
//     required this.movie:76170,
//     required this.movie:76338,
//     required this.movie:8867,
//     required this.movie:9480,
//     required this.movie:9738,
//     required this.movie:9947,
//     required this.movie:99861,
//   });
//   late final String movie:100402;
//   late final String movie:10138;
//   late final String movie:10195;
//   late final String movie:102382;
//   late final String movie:102899;
//   late final String movie:10658;
//   late final String movie:118340;
//   late final String movie:1250;
//   late final String movie:127585;
//   late final String movie:13056;
//   late final String movie:13995;
//   late final String movie:166424;
//   late final String movie:1724;
//   late final String movie:1726;
//   late final String movie:1771;
//   late final String movie:1927;
//   late final String movie:1930;
//   late final String movie:1979;
//   late final String movie:2080;
//   late final String movie:22059;
//   late final String movie:24428;
//   late final String movie:246655;
//   late final String movie:263115;
//   late final String movie:271110;
//   late final String movie:283995;
//   late final String movie:284052;
//   late final String movie:284053;
//   late final String movie:284054;
//   late final String movie:293660;
//   late final String movie:299534;
//   late final String movie:299536;
//   late final String movie:299537;
//   late final String movie:315635;
//   late final String movie:363088;
//   late final String movie:36586;
//   late final String movie:36647;
//   late final String movie:36648;
//   late final String movie:36657;
//   late final String movie:36658;
//   late final String movie:36668;
//   late final String movie:429617;
//   late final String movie:49538;
//   late final String movie:497698;
//   late final String movie:524434;
//   late final String movie:557;
//   late final String movie:558;
//   late final String movie:559;
//   late final String movie:566525;
//   late final String movie:634649;
//   late final String movie:68721;
//   late final String movie:71676;
//   late final String movie:7220;
//   late final String movie:76170;
//   late final String movie:76338;
//   late final String movie:8867;
//   late final String movie:9480;
//   late final String movie:9738;
//   late final String movie:9947;
//   late final String movie:99861;
//
//   ObjectIds.fromJson(Map<String, dynamic> json){
//     movie:100402 = json['movie:100402'];
//     movie:10138 = json['movie:10138'];
//     movie:10195 = json['movie:10195'];
//     movie:102382 = json['movie:102382'];
//     movie:102899 = json['movie:102899'];
//     movie:10658 = json['movie:10658'];
//     movie:118340 = json['movie:118340'];
//     movie:1250 = json['movie:1250'];
//     movie:127585 = json['movie:127585'];
//     movie:13056 = json['movie:13056'];
//     movie:13995 = json['movie:13995'];
//     movie:166424 = json['movie:166424'];
//     movie:1724 = json['movie:1724'];
//     movie:1726 = json['movie:1726'];
//     movie:1771 = json['movie:1771'];
//     movie:1927 = json['movie:1927'];
//     movie:1930 = json['movie:1930'];
//     movie:1979 = json['movie:1979'];
//     movie:2080 = json['movie:2080'];
//     movie:22059 = json['movie:22059'];
//     movie:24428 = json['movie:24428'];
//     movie:246655 = json['movie:246655'];
//     movie:263115 = json['movie:263115'];
//     movie:271110 = json['movie:271110'];
//     movie:283995 = json['movie:283995'];
//     movie:284052 = json['movie:284052'];
//     movie:284053 = json['movie:284053'];
//     movie:284054 = json['movie:284054'];
//     movie:293660 = json['movie:293660'];
//     movie:299534 = json['movie:299534'];
//     movie:299536 = json['movie:299536'];
//     movie:299537 = json['movie:299537'];
//     movie:315635 = json['movie:315635'];
//     movie:363088 = json['movie:363088'];
//     movie:36586 = json['movie:36586'];
//     movie:36647 = json['movie:36647'];
//     movie:36648 = json['movie:36648'];
//     movie:36657 = json['movie:36657'];
//     movie:36658 = json['movie:36658'];
//     movie:36668 = json['movie:36668'];
//     movie:429617 = json['movie:429617'];
//     movie:49538 = json['movie:49538'];
//     movie:497698 = json['movie:497698'];
//     movie:524434 = json['movie:524434'];
//     movie:557 = json['movie:557'];
//     movie:558 = json['movie:558'];
//     movie:559 = json['movie:559'];
//     movie:566525 = json['movie:566525'];
//     movie:634649 = json['movie:634649'];
//     movie:68721 = json['movie:68721'];
//     movie:71676 = json['movie:71676'];
//     movie:7220 = json['movie:7220'];
//     movie:76170 = json['movie:76170'];
//     movie:76338 = json['movie:76338'];
//     movie:8867 = json['movie:8867'];
//     movie:9480 = json['movie:9480'];
//     movie:9738 = json['movie:9738'];
//     movie:9947 = json['movie:9947'];
//     movie:99861 = json['movie:99861'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['movie:100402'] = movie:100402;
//     _data['movie:10138'] = movie:10138;
//     _data['movie:10195'] = movie:10195;
//     _data['movie:102382'] = movie:102382;
//     _data['movie:102899'] = movie:102899;
//     _data['movie:10658'] = movie:10658;
//     _data['movie:118340'] = movie:118340;
//     _data['movie:1250'] = movie:1250;
//     _data['movie:127585'] = movie:127585;
//     _data['movie:13056'] = movie:13056;
//     _data['movie:13995'] = movie:13995;
//     _data['movie:166424'] = movie:166424;
//     _data['movie:1724'] = movie:1724;
//     _data['movie:1726'] = movie:1726;
//     _data['movie:1771'] = movie:1771;
//     _data['movie:1927'] = movie:1927;
//     _data['movie:1930'] = movie:1930;
//     _data['movie:1979'] = movie:1979;
//     _data['movie:2080'] = movie:2080;
//     _data['movie:22059'] = movie:22059;
//     _data['movie:24428'] = movie:24428;
//     _data['movie:246655'] = movie:246655;
//     _data['movie:263115'] = movie:263115;
//     _data['movie:271110'] = movie:271110;
//     _data['movie:283995'] = movie:283995;
//     _data['movie:284052'] = movie:284052;
//     _data['movie:284053'] = movie:284053;
//     _data['movie:284054'] = movie:284054;
//     _data['movie:293660'] = movie:293660;
//     _data['movie:299534'] = movie:299534;
//     _data['movie:299536'] = movie:299536;
//     _data['movie:299537'] = movie:299537;
//     _data['movie:315635'] = movie:315635;
//     _data['movie:363088'] = movie:363088;
//     _data['movie:36586'] = movie:36586;
//     _data['movie:36647'] = movie:36647;
//     _data['movie:36648'] = movie:36648;
//     _data['movie:36657'] = movie:36657;
//     _data['movie:36658'] = movie:36658;
//     _data['movie:36668'] = movie:36668;
//     _data['movie:429617'] = movie:429617;
//     _data['movie:49538'] = movie:49538;
//     _data['movie:497698'] = movie:497698;
//     _data['movie:524434'] = movie:524434;
//     _data['movie:557'] = movie:557;
//     _data['movie:558'] = movie:558;
//     _data['movie:559'] = movie:559;
//     _data['movie:566525'] = movie:566525;
//     _data['movie:634649'] = movie:634649;
//     _data['movie:68721'] = movie:68721;
//     _data['movie:71676'] = movie:71676;
//     _data['movie:7220'] = movie:7220;
//     _data['movie:76170'] = movie:76170;
//     _data['movie:76338'] = movie:76338;
//     _data['movie:8867'] = movie:8867;
//     _data['movie:9480'] = movie:9480;
//     _data['movie:9738'] = movie:9738;
//     _data['movie:9947'] = movie:9947;
//     _data['movie:99861'] = movie:99861;
//     return _data;
//   }
// }

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