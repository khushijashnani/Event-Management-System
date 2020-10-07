class Event {
  String id;
  String title;
  String description;
  int entryamount;  //rangeslider
  DateTime startDate; //datetile
  DateTime endDate;   //datetile
  String category;  //checkbox
  String imageUrl;
  String location;    
  String speciality;

  Event(
      {this.id,
      this.category,
      this.description,
      this.startDate,
      this.endDate,
      this.entryamount,
      this.imageUrl,
      this.location,
      this.speciality,
      this.title});

  factory Event.fromMap(Map doc) {
    return Event(
        id: doc['id'],
        title: doc['title'],
        imageUrl: doc['image'],
        category: doc['category'],
        location: doc['location'],
        description: doc['description'],
        startDate: DateTime.parse(doc['start_date']),
        endDate: DateTime.parse(doc['end_date']),
        speciality: doc['speciality'],
        entryamount: int.parse(doc['entry_amount']));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['start_date'] = this.startDate.toString();
    data['end_date'] = this.endDate.toString();
    data['location'] = this.location;
    data['entry_amount'] = this.entryamount;
    data['speciality'] = this.speciality;
    data['image'] = this.imageUrl;
    data['category'] = this.category;
    return data;
  }
}
