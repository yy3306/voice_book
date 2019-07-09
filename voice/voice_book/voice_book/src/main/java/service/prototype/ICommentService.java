package service.prototype;

import java.util.List;
import entity.Comment;

public interface ICommentService {
	void   addComment(Comment comment);
	List<Comment>  findByUserId(int  userId);
	Comment   findByCommentId(int commentId);
	List<Comment>  findByChapterId(int  chapterId);
	  
} 
