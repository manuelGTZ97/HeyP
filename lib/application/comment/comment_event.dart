part of 'comment_bloc.dart';

@freezed
abstract class CommentEvent with _$CommentEvent {
  const factory CommentEvent.commentChanged(String commentStr) = CommentChanged;
  const factory CommentEvent.addComment(int id) = AddComment;
  const factory CommentEvent.deleteComment(int id) = DeleteComment;
  const factory CommentEvent.getComments(int id) = GetComments;
}
