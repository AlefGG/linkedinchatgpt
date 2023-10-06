import 'package:json_annotation/json_annotation.dart';

part 'linkedin_response.g.dart';

@JsonSerializable()
class LinkedinResponse {
  final String? public_identifier;
  final String? profile_pic_url;
  final String? background_cover_image_url;
  final String? first_name;
  final String? last_name;
  final String? full_name;
  final int? follower_count;
  final String? occupation;
  final String? headline;
  final String? summary;
  final String? country;
  final String? country_full_name;
  final String? city;
  final String? state;

  LinkedinResponse({
    required this.public_identifier,
    required this.profile_pic_url,
    required this.background_cover_image_url,
    required this.first_name,
    required this.last_name,
    required this.full_name,
    required this.follower_count,
    required this.occupation,
    required this.headline,
    required this.summary,
    required this.country,
    required this.country_full_name,
    required this.city,
    required this.state,
  });

  factory LinkedinResponse.fromJson(Map<String, dynamic> json) =>
      _$LinkedinResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LinkedinResponseToJson(this);
}
