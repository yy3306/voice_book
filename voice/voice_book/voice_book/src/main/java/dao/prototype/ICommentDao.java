package dao.prototype;

import java.util.List;

import entity.Comment;

public interface ICommentDao {
	  void   add(Comment  comment);
      List<Comment>  findByUserId(int  userId);
      Comment   findByCommentId(int commentId);
      List<Comment>  findByChapterId(int  chapterId);
 
}
