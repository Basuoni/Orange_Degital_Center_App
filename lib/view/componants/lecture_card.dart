import 'package:flutter/material.dart';

Widget LecturCard(
  String subject,
  String date,
  String time,
  String endtime,
) {
  return Container(
    child: Container(
      width: double.infinity,
      height: 100,
      child: Card(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(subject),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.calendar_month,color: Colors.grey,),
                      Text(date),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.access_time_outlined,color: Colors.green,),
                      Text(time),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.access_time_filled_sharp,color: Colors.red,),
                      Text(endtime),
                    ],
                  ),


                  // Text(university),
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}
