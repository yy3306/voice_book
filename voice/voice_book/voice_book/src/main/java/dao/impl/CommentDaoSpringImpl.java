package dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import dao.prototype.ICommentDao;
import entity.Comment;
@Repository
public class CommentDaoSpringImpl   implements  ICommentDao{
      @Autowired
     private  JdbcTemplate  jt;


	@Override
	public void add(Comment comment) {
		jt.update("insert  into  t_comment(chapter_id,user_id,content,commentTime)  values(?,?,?,?)",
				new Object[]{comment.getChapterId(),comment.getUserId(),comment.getContent(),
						comment.getCommentTime()});
		
	}

	@Override
	public List<Comment> findByUserId(int userId) {
		return jt.query("select  * from   t_comment  where user_id=?", 
				new Object[]{userId},new  BeanPropertyRowMapper<Comment>(Comment.class));
	}

	@Override
	public Comment findByCommentId(int commentId) {
		return jt.queryForObject("select  * from   t_comment  where comment_id=?", 
				new Object[]{commentId},new  BeanPropertyRowMapper<Comment>(Comment.class));
	}

	@Override
	public List<Comment> findByChapterId(int chapterId) {
		return jt.query("select  * from   t_comment  where chapter_id=?", 
				new Object[]{chapterId},new  BeanPropertyRowMapper<Comment>(Comment.class));
	}

}
