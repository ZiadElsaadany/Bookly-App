import 'package:equatable/equatable.dart';

/// isAvailable : false

class Epub extends Equatable {
  Epub({
      this.isAvailable,});

  Epub.fromJson(dynamic json) {
    isAvailable = json['isAvailable'];
  }
  bool? isAvailable;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = isAvailable;
    return map;
  }

  @override
  List<Object?> get props => [
   isAvailable
  ];

}