class GlobalEntity {
  Confirmed? confirmed;
  Confirmed? recovered;
  Confirmed? deaths;
  String? dailySummary;
  DailyTimeSeries? dailyTimeSeries;
  String? image;
  String? source;
  String? countries;
  DailyTimeSeries? countryDetail;
  String? lastUpdate;

  GlobalEntity(
      {confirmed,
      recovered,
      deaths,
      dailySummary,
      dailyTimeSeries,
      image,
      source,
      countries,
      countryDetail,
      lastUpdate});

  GlobalEntity.fromJson(Map<String, dynamic> json) {
    confirmed = json['confirmed'] != null
        ? Confirmed.fromJson(json['confirmed'])
        : null;
    recovered = json['recovered'] != null
        ? Confirmed.fromJson(json['recovered'])
        : null;
    deaths = json['deaths'] != null ? Confirmed.fromJson(json['deaths']) : null;
    dailySummary = json['dailySummary'];
    dailyTimeSeries = json['dailyTimeSeries'] != null
        ? DailyTimeSeries.fromJson(json['dailyTimeSeries'])
        : null;
    image = json['image'];
    source = json['source'];
    countries = json['countries'];
    countryDetail = json['countryDetail'] != null
        ? DailyTimeSeries.fromJson(json['countryDetail'])
        : null;
    lastUpdate = json['lastUpdate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (confirmed != null) {
      data['confirmed'] = confirmed!.toJson();
    }
    if (recovered != null) {
      data['recovered'] = recovered!.toJson();
    }
    if (deaths != null) {
      data['deaths'] = deaths!.toJson();
    }
    data['dailySummary'] = dailySummary;
    if (dailyTimeSeries != null) {
      data['dailyTimeSeries'] = dailyTimeSeries!.toJson();
    }
    data['image'] = image;
    data['source'] = source;
    data['countries'] = countries;
    if (countryDetail != null) {
      data['countryDetail'] = countryDetail!.toJson();
    }
    data['lastUpdate'] = lastUpdate;
    return data;
  }
}

class Confirmed {
  int? value;
  String? detail;

  Confirmed({value, detail});

  Confirmed.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    detail = json['detail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['value'] = value;
    data['detail'] = detail;
    return data;
  }
}

class DailyTimeSeries {
  String? pattern;
  String? example;

  DailyTimeSeries({pattern, example});

  DailyTimeSeries.fromJson(Map<String, dynamic> json) {
    pattern = json['pattern'];
    example = json['example'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pattern'] = pattern;
    data['example'] = example;
    return data;
  }
}
