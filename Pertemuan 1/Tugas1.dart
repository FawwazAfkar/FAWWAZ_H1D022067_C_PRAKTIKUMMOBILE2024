//100% halal name generator

//import library
import 'dart:math';
import 'dart:io';

//main
void main() {
  //array of name
  List<String> boyFirstNames = [
    'Muhammad', 
    'Khalid', 
    'Ali', 
    'Zayn', 
    'Yusuf',
    'Rayyan',
    'Hafiz',
    'Taqy',
    'Fadhil',
    'Rashid'
  ];
  List<String> girlFirstNames = [
    'Aisha',
    'Fatima',
    'Salma',
    'Aqeela',
    'Adzana',
    'Shafira',
    'Aaliyah',
    'Annisa',
    'Nadya',
    'Medina'
  ];
  List<String> boylastNames = [
    'Hakim',
    'Husein',
    'Malik',
    'Rahman',
    'Zakky'
  ];
  List<String> girllastNames = [
    'Salsabila',
    'Azkiya',
    'Adhalia',
    'Shaliha',
    'Azzahra'
  ];

  //var name
  String firstName;
  String lastName;

  // input gender
  print('Enter gender (boy/girl):');
  String? gender = stdin.readLineSync();

  // validate input
  bool isBoy = true;

  if (gender == null) {
    print('Invalid gender input. Defaulting to boy.');
    isBoy = true;
  } else if (gender.toLowerCase() != 'boy' && gender.toLowerCase() != 'girl') {
    print('Invalid gender input. Defaulting to boy.');
    isBoy = true;
  } else {
    if (gender.toLowerCase() == 'boy') {
    isBoy = true;
    } else if (gender.toLowerCase() == 'girl') {
      isBoy = false;
    }
  } 

  //generate random name based on gender selected
  if (isBoy) {
    firstName = boyFirstNames[Random().nextInt(boyFirstNames.length)];
    lastName = boylastNames[Random().nextInt(boylastNames.length)];
  } else {
    firstName = girlFirstNames[Random().nextInt(girlFirstNames.length)];
    lastName = girllastNames[Random().nextInt(girllastNames.length)];
  }
  
  String fullName = '$firstName $lastName';

  print('Generated Full Name: $fullName');
}
