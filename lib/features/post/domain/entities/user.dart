// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:isar/isar.dart';
import 'package:quriverse/features/post/data/models/user.dart';

import 'package:quriverse/features/post/domain/entities/post.dart';

part 'user.g.dart';

@Collection()
class UserEntity {
  Id? lid;
  String? id;
  String? firstName;
  String? lastName;
  String? username;
  String? theme;
  String? bio;
  bool? isBot;
  bool? isVerified;
  bool? isMod;
  bool? isBeta;
  bool? isStaff;
  MediaSource? imageUrl;
  MediaSource? coverUrl;
  UserEntity({
    this.id,
    this.firstName,
    this.lastName,
    this.username,
    this.theme,
    this.bio,
    this.isBot,
    this.isVerified,
    this.isMod,
    this.isBeta,
    this.isStaff,
    this.imageUrl,
    this.coverUrl,
  });

  factory UserEntity.fromModel(UserModel userModel) {
    return UserEntity(
      id: userModel.id,
      firstName: userModel.firstName,
      lastName: userModel.lastName,
      username: userModel.username,
      theme: userModel.theme,
      bio: userModel.bio,
      isBot: userModel.isBot,
      isVerified: userModel.isVerified,
      isMod: userModel.isMod,
      isBeta: userModel.isBeta,
      isStaff: userModel.isStaff,
      imageUrl: userModel.imageUrl,
      coverUrl: userModel.coverUrl,
    );
  }
}
