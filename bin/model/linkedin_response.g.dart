// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'linkedin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LinkedinResponse _$LinkedinResponseFromJson(Map<String, dynamic> json) =>
    LinkedinResponse(
      public_identifier: json['public_identifier'] as String?,
      profile_pic_url: json['profile_pic_url'] as String?,
      background_cover_image_url: json['background_cover_image_url'] as String?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      full_name: json['full_name'] as String?,
      follower_count: json['follower_count'] as int?,
      occupation: json['occupation'] as String?,
      headline: json['headline'] as String?,
      summary: json['summary'] as String?,
      country: json['country'] as String?,
      country_full_name: json['country_full_name'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
    );

Map<String, dynamic> _$LinkedinResponseToJson(LinkedinResponse instance) =>
    <String, dynamic>{
      'public_identifier': instance.public_identifier,
      'profile_pic_url': instance.profile_pic_url,
      'background_cover_image_url': instance.background_cover_image_url,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'full_name': instance.full_name,
      'follower_count': instance.follower_count,
      'occupation': instance.occupation,
      'headline': instance.headline,
      'summary': instance.summary,
      'country': instance.country,
      'country_full_name': instance.country_full_name,
      'city': instance.city,
      'state': instance.state,
    };
