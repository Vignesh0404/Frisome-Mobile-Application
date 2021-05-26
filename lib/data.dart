import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List<Photo>> fetchPhotos(http.Client client) async {
  final response = await client.get(Uri.parse(
      'https://frisome.com/analytics/test/index/4e24f28b28647d98c6440420f9da0d35/json'));

  // Use the compute function to run parsePhotos in a separate isolate.
  return compute(parsePhotos, response.body);
}

// A function that converts a response body into a List<Photo>.
List<Photo> parsePhotos(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
}

class Photo {
  final String restaurant_id;
  final String name;
  final String description;
  final price;
  final image;

  Photo(
      {this.restaurant_id,
      this.name,
      this.description,
      this.image,
      this.price});

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
        restaurant_id: json['restaurant_id'] as String,
        name: json['name'] as String,
        description: json['description'] as String,
        image: json['menu_image'],
        price: json['menu_price']
        //thumbnailUrl: json['thumbnailUrl'] as String,
        );
  }
}
