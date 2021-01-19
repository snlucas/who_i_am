import 'package:flutter/material.dart';

class MyCard {
  MyCard(
      String img,
      String name,
      String occupation,
      String email,
      String instagram,
      String linkedin,
      String twitter,
      String whatsapp,
      String reddit) {
    this.img = img.toUpperCase();
    this.name = name.toUpperCase();
    this.occupation = occupation.toUpperCase();
    this.email = email.toUpperCase();
    this.instagram = instagram.toUpperCase();
    this.linkedin = linkedin.toUpperCase();
    this.twitter = twitter.toUpperCase();
    this.whatsapp = whatsapp.toUpperCase();
    this.reddit = reddit.toUpperCase();
  }

  String img;
  String name;
  String occupation;
  String email;
  String instagram;
  String linkedin;
  String twitter;
  String whatsapp;
  String reddit;
}
