package service.Impl;



import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import dao.prototype.ICommentDao;

import entity.Comment;

import service.prototype.ICommentService;
@Service
public class CommentServiceDaoImpl  implements ICommentService{
         @Autowired
      private  ICommentDao   commentDao;
        
		@Override
		public void addComment(Comment comment) {
		
			commentDao.add(comment);
		}
		@Override
		public List<Comment> findByUserId(int userId) {
			return commentDao.findByUserId(userId);
		}
		@Override
		public Comment findByCommentId(int commentId) {
			
			return commentDao.findByCommentId(commentId);
		}
		@Override
		public List<Comment> findByChapterId(int chapterId) {
		
			return commentDao.findByChapterId(chapterId);
		}


}
