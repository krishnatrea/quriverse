// ignore_for_file: public_member_api_docs, sort_constructors_first
class APIResponseModel<T, U, P> {
  T? data;
  Map<String, U>? user;
  P? posts;
  APIResponseModel({
    this.data,
    this.user,
    this.posts,
  });
}
