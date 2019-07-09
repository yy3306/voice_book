package entity;

import java.io.Serializable;
import java.util.Date;

public class Comment implements Serializable {


	private static final long serialVersionUID = 3621150889411341643L;
	private int commentId;
	private int chapterId;
	private int userId;
	private String content;
	private int thumbUpNumber;//点赞数
	private Date commentTime; //评论时间
	private Date updateTime;//更新时间
	
	public Comment() {
		super();
	}

	public Comment(int commentId, int chapterId, int userId, String content, int thumbUpNumber, Date commentTime,
			Date updateTime) {
		super();
		this.commentId = commentId;
		this.chapterId = chapterId;
		this.userId = userId;
		this.content = content;
		this.thumbUpNumber = thumbUpNumber;
		this.commentTime = commentTime;
		this.updateTime = updateTime;
	}




	public int getCommentId() {
		return commentId;
	}




	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}




	public int getChapterId() {
		return chapterId;
	}




	public void setChapterId(int chapterId) {
		this.chapterId = chapterId;
	}




	public int getUserId() {
		return userId;
	}




	public void setUserId(int userId) {
		this.userId = userId;
	}




	public String getContent() {
		return content;
	}




	public void setContent(String content) {
		this.content = content;
	}






	public int getThumbUpNumber() {
		return thumbUpNumber;
	}




	public void setThumbUpNumber(int thumbUpNumber) {
		this.thumbUpNumber = thumbUpNumber;
	}




	public Date getCommentTime() {
		return commentTime;
	}




	public void setCommentTime(Date commentTime) {
		this.commentTime = commentTime;
	}




	public Date getUpdateTime() {
		return updateTime;
	}




	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}




	@Override
	public String toString() {
		return "Comment [commentId=" + commentId + ", chapterId=" + chapterId + ", userId=" + userId + ", content="
				+ content + ", thumbUpNumber=" + thumbUpNumber + ", commentTime=" + commentTime + ", updateTime="
				+ updateTime + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + commentId;
		result = prime * result + chapterId;
		result = prime * result + userId;
		result = prime * result + thumbUpNumber;
		result = prime * result + ((content == null) ? 0 : content.hashCode());
		result = prime * result + ((commentTime == null) ? 0 : commentTime.hashCode());
		result = prime * result + ((updateTime == null) ? 0 : updateTime.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Comment other = (Comment) obj;
		if (commentId != other.commentId)
			return false;
		if (chapterId != other.chapterId)
			return false;
		if (userId != other.userId)
			return false;
		if (thumbUpNumber != other.thumbUpNumber)
			return false;
		if (content == null) {
			if (other.content != null)
				return false;
		} else if (!content.equals(other.content))
			return false;
		if (commentTime == null) {
			if (other.commentTime != null)
				return false;
		} else if (!commentTime.equals(other.commentTime))
			return false;
		if (updateTime == null) {
			if (other.updateTime != null)
				return false;
		} else if (!updateTime.equals(other.updateTime))
			return false;
		
		return true;
	}

}
