class CountryEntity {
  List<Countries>? countries;

  CountryEntity({countries});

  CountryEntity.fromJson(Map<String, dynamic> json) {
    if (json['countries'] != null) {
      countries = <Countries>[];
      json['countries'].forEach((v) {
        countries!.add(Countries.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (countries != null) {
      data['countries'] = countries!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Countries {
  String? name;
  String? iso2;
  String? iso3;

  Countries({name, iso2, iso3});

  Countries.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    iso2 = json['iso2'];
    iso3 = json['iso3'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['iso2'] = iso2;
    data['iso3'] = iso3;
    return data;
  }
}
