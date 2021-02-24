part of 'post_bloc.dart';

@freezed
abstract class PostEvent with _$PostEvent {
  const factory PostEvent.imageChanged(String imageStr) = ImageChanged;
  const factory PostEvent.bodyChanged(String bodyStr) = BodyChanged;
  const factory PostEvent.addPost() = AddPost;
  const factory PostEvent.likePost(int id) = LikePost;
  const factory PostEvent.getPost(int id) = GetPost;
}
