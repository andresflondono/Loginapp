class modelUsers {
  final int id;
  final String name;
  final String username;
  final String email;
  final String phone;
  final String website;
  final modelUsersAddress listAddress;
  final modelUsersCompany listCompany;

  modelUsers( //this.respuestaDetalle,
      {
    this.id,
    this.name,
    this.username,
    this.email,
    this.phone,
    this.website,
    this.listAddress,
    this.listCompany,
  });

  factory modelUsers.fromJson(Map<String, dynamic> json) {
    return modelUsers(
      id: json['id'],
      name: json["name"],
      username: json["username"],
      email: json["email"],
      phone: json["phone"],
      website: json["website"],
      listAddress: modelUsersAddress.fromJson(json["address"]),
      listCompany: modelUsersCompany.fromJson(json["company"]),
    );
  }
}

class modelUsersAddress {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final modelUsersAddressGeo listGeo;

  modelUsersAddress( //this.respuestaDetalle,
      {
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.listGeo,
  });

  factory modelUsersAddress.fromJson(Map<String, dynamic> json) {
    return modelUsersAddress(
      street: json['street'],
      suite: json["suite"],
      city: json["city"],
      zipcode: json["zipcode"],
      listGeo: modelUsersAddressGeo.fromJson(json["geo"]),
    );
  }
}

class modelUsersAddressGeo {
  final String lat;
  final String lng;

  modelUsersAddressGeo( //this.respuestaDetalle,
      {
    this.lat,
    this.lng,
  });

  factory modelUsersAddressGeo.fromJson(Map<String, dynamic> json) {
    return modelUsersAddressGeo(
      lat: json['lat'],
      lng: json["lng"],
    );
  }
}

class modelUsersCompany {
  final String name;
  final String catchPhrase;
  final String bs;

  modelUsersCompany( //this.respuestaDetalle,
      {
    this.name,
    this.catchPhrase,
    this.bs,
  });

  factory modelUsersCompany.fromJson(Map<String, dynamic> json) {
    return modelUsersCompany(
      name: json['name'],
      catchPhrase: json["catchPhrase"],
      bs: json["bs"],
    );
  }
}
