import 'package:flutter/material.dart';

class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  var event_list = [
    {
      "name": "Janmashtami musical concert",
      "picture": "images/janmashtami.jpg",
      "date": 31 / 07 / 20,
      "venue": "Iskon",
    },
    {
      "name": "navaratri utsav",
      "picture": "images/navaratri.jpg",
      "date": 31 / 07 / 20,
      "venue": "Iskon",
    },
    {
      "name": "Janmashtami musical concert",
      "picture": "images/janmashtami.jpg",
      "date": 31 / 07 / 20,
      "venue": "Iskon",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: event_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return Single_event(
          event_name: event_list[index]['name'],
          event_picture: event_list[index]['picture'],
          event_date: event_list[index]['date'],
          event_venue: event_list[index]['venue'],
          );
    });
}
}


class Single_event extends StatelessWidget {
  final event_name;
  final event_picture;
  final event_date;
  final event_venue;

  Single_event({
    this.event_name,
    this.event_picture,
    this.event_date,
    this.event_venue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Text("test"),
    );
  }
}

