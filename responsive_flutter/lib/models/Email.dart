// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Email {
  final String image, name, subject, time, body, fromEmail;
  final bool isAttachmentAvailable, isChecked;
  final Color tagColor;

  Email({
    required this.name,
    required this.fromEmail,
    required this.image,
    required this.subject,
    required this.isAttachmentAvailable,
    required this.isChecked,
    required this.tagColor,
    required this.time,
    required this.body,
  });
}

List<Email> emails = List.generate(
  demoData.length,
  (index) => Email(
    name: demoData[index]['name'],
    fromEmail: demoData[index]['fromEmail'],
    image: demoData[index]['image'],
    subject: demoData[index]['subject'],
    isAttachmentAvailable: demoData[index]['isAttachmentAvailable'],
    isChecked: demoData[index]['isChecked'],
    tagColor: demoData[index]['tagColor'],
    time: demoData[index]['time'],
    body: demoData[index]['body'],
  ),
);

List demoData = [
  {
    "name": "Apple",
    "fromEmail": "noreply@apple.com",
    "image": "assets/images/user_1.png",
    "subject": "iPhone 12 is here",
    "isAttachmentAvailable": false,
    "isChecked": true,
    "tagColor": const Color(0xFF23CF91),
    "time": "Now",
    "body": "Hello \n \nYou should come to Apple to change your Phone"
  },
  {
    "name": "Elvia Atkins",
    "fromEmail": "elvia.atkins@gmail.com",
    "image": "assets/images/user_2.png",
    "subject": "Inspiration for our new home",
    "isAttachmentAvailable": true,
    "isChecked": false,
    "tagColor": const Color(0xFF23CF91),
    "time": "15:32",
    "body": "Hello my love, \n \nSunt architecto voluptatum esse tempora sint nihil minus incidunt nisi. Perspiciatis natus quo unde magnam numquam pariatur amet ut. Perspiciatis ab totam. Ut labore maxime provident. Voluptate ea omnis et ipsum asperiores laborum repellat explicabo fuga. Dolore voluptatem praesentium quis eos laborum dolores cupiditate nemo labore. \n \nLove you, \n\nElvia",
  },
  {
    "name": "Marvin Kiehn",
    "fromEmail": "marvin.kiehn@gmail.com",
    "image": "assets/images/user_3.png",
    "subject": "Business-focused empowering the world",
    "isAttachmentAvailable": true,
    "isChecked": false,
    "tagColor": const Color(0xFF23CF91),
    "time": "14:27",
    "body": "Hello this is Marvin, \n \nSunt architecto voluptatum esse tempora sint nihil minus incidunt nisi.  . \n \nSinscere, \n\nMavin",
  },
  {
    "name": "Domenic Bosco",
    "fromEmail": "domenic.bosco@gmail.com",
    "image": "assets/images/user_4.png",
    "subject": "The fastest way to Design",
    "isAttachmentAvailable": false,
    "isChecked": true,
    "tagColor": const Color(0xFF23CF91),
    "time": "10:43",
    "body": "Hey John, \n \nSunt architecto voluptatum esse tempora sint nihil minus incidunt nisi.  . \n \nSinscere, \n\nDomenic",
  },
  {
    "name": "Elenor Bauch",
    "fromEmail": "elenor.bauch@gmail.com",
    "image": "assets/images/user_5.png",
    "subject": "New job opportunities",
    "isAttachmentAvailable": false,
    "isChecked": false,
    "tagColor": const Color(0xFF3A6FF7),
    "time": "9:58",
    "body": "Hey John, Sunt architecto voluptatum esse tempora sint nihil minus incidunt nisi. \n \nSinscere, \nElenor",
  }
];

String emailDemoText = "Corporis illo provident. Sunt omnis neque et aperiam. Nemo ut dolorum fugit eum sed. Corporis illo provident. Sunt omnis neque et aperiam. Nemo ut dolorum fugit eum sed. Corporis illo provident. Sunt omnis neque et aperiam. Nemo ut dolorum fugit eum sed";
