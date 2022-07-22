class DetailCountryEntity {
  Confirmed? confirmed;
  Confirmed? recovered;
  Confirmed? deaths;
  String? lastUpdate;

  DetailCountryEntity({confirmed, recovered, deaths, lastUpdate});

  DetailCountryEntity.fromJson(Map<String, dynamic> json) {
    confirmed = json['confirmed'] != null
        ? Confirmed.fromJson(json['confirmed'])
        : null;
    recovered = json['recovered'] != null
        ? Confirmed.fromJson(json['recovered'])
        : null;
    deaths = json['deaths'] != null ? Confirmed.fromJson(json['deaths']) : null;
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
