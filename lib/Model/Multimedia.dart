import 'package:flutter/foundation.dart';
import 'dart:ffi';

class Multimedia {
  String? url;
  String? height;
  String? width;

  Multimedia({this.url, this.height, this.width});

  factory Multimedia.fromJson(Map<String, dynamic> json) {
    return new Multimedia(
        url: json['url'] ??
            "https://www.kentkart.com/wp-content/themes/unbound/images/No-Image-Found-400x264.png",
        height: json['height'] ?? "264",
        width: json['width'] ?? "400");
  }
}
