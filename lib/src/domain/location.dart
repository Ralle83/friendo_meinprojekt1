class Location {
  String city;
  String street;

  Location({required this.city, required this.street});
}

//toMap Methode
Map<String, dynamic> toMap () {
return {
 "city" : city,
  "street" : street,
  };

  } 

factory Event.fromMap(Map<String, dynamic> map) {
  return Location(
   city: map["city"],
  street: map["street"],
  );
 }
}

