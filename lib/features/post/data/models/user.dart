import 'package:quriverse/features/post/domain/entities/user.dart';

import '../../domain/entities/post.dart';

class UserModel extends UserEntity {
  UserModel({
    String? id,
    String? firstName,
    String? lastName,
    String? username,
    String? theme,
    String? bio,
    bool? isBot,
    bool? isVerified,
    bool? isMod,
    bool? isBeta,
    bool? isStaff,
    MediaSource? imageUrl,
    MediaSource? coverUrl,
  }) : super(
          id: id,
          firstName: firstName,
          lastName: lastName,
          username: username,
          theme: theme,
          bio: bio,
          isBot: isBot,
          isVerified: isVerified,
          isMod: isMod,
          isBeta: isBeta,
          isStaff: isStaff,
          imageUrl: imageUrl,
          coverUrl: coverUrl,
        );

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    username = json['username'];
    theme = json['theme'];
    bio = json['bio'];
    isBot = json['is_bot'];
    isVerified = json['is_verified'];
    imageUrl = MediaSource.fromMap(json['image_url']);
    coverUrl = MediaSource.fromMap(json['cover_url']);
    isMod = json['is_mod'];
    isBeta = json['is_beta'];
    isStaff = json['is_staff'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['username'] = this.username;
    data['theme'] = this.theme;
    data['bio'] = this.bio;
    data['is_bot'] = this.isBot;
    data['is_verified'] = this.isVerified;
    data['is_mod'] = this.isMod;
    data['is_beta'] = this.isBeta;
    data['is_staff'] = this.isStaff;
    return data;
  }
}
