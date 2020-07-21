import 'dart:convert';

/// This class will help us in managing yes/no response data in our app.
class Answer {
  /// The answer text
  final String answer;

  /// The GIF Url
  final String image;
  Answer({
    this.answer,
    this.image,
  });

  Answer copyWith({
    String answer,
    String image,
  }) {
    return Answer(
      answer: answer ?? this.answer,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'answer': answer,
      'image': image,
    };
  }

  static Answer fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Answer(
      answer: map['answer'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  static Answer fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() => 'Answer(answer: $answer, image: $image)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Answer && o.answer == answer && o.image == image;
  }

  @override
  int get hashCode => answer.hashCode ^ image.hashCode;
}
