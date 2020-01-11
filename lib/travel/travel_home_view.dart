import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:usarak_information/travel/travel_trip_model.dart';

class HomeView extends StatelessWidget {
  final List<Trip> tripList = [
    Trip('New York', DateTime.now(), DateTime.now(), 200.00, 'Car'),
    Trip('Boston', DateTime.now(), DateTime.now(), 450.00, 'plane'),
    Trip('Washington D.C.', DateTime.now(), DateTime.now(), 900.00, 'bus'),
    Trip('Austin', DateTime.now(), DateTime.now(), 170.00, 'Car'),
    Trip('Scranton', DateTime.now(), DateTime.now(), 180.00, 'Car'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: tripList.length,
          itemBuilder: (BuildContext context, int index) =>
              buildTripCard(context, index)),
    );
  }

  Widget buildTripCard(BuildContext context, int index) {
    final trip = tripList[index];
    return Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                child: Row(children: <Widget>[
                  Text(
                    trip.title,
                    style: TextStyle(fontSize: 30.0),
                  ),
                  Spacer(),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 80.0),
                child: Row(children: <Widget>[
                  Text(
                      '${DateFormat('dd/MM/yyyy').format(trip.startDate).toString()} -${DateFormat('dd/MM/yyyy').format(trip.endDate).toString()}'),
                  Spacer(),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      '\$${trip.budget.toStringAsFixed(2)}',
                      style: TextStyle(fontSize: 35.0),
                    ),
                    Spacer(),
                    Icon(Icons.directions_car),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
