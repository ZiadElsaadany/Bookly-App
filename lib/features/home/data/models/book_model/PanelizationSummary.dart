import 'package:equatable/equatable.dart';

/// containsEpubBubbles : false
/// containsImageBubbles : false

class PanelizationSummary extends Equatable{
  PanelizationSummary({
      this.containsEpubBubbles, 
      this.containsImageBubbles,});

  PanelizationSummary.fromJson(dynamic json) {
    containsEpubBubbles = json['containsEpubBubbles'];
    containsImageBubbles = json['containsImageBubbles'];
  }
  bool? containsEpubBubbles;
  bool? containsImageBubbles;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['containsEpubBubbles'] = containsEpubBubbles;
    map['containsImageBubbles'] = containsImageBubbles;
    return map;
  }

  @override
  List<Object?> get props => [
   containsEpubBubbles,
   containsImageBubbles
  ];

}