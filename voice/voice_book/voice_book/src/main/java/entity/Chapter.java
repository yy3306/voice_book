package entity;

import java.io.Serializable;
import java.util.Date;

public class Chapter   implements   Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private   int  id;
	private   String name;
	private   int   album_id;
	private    long   playNumber;
	private    int   audioId;
	private    long     duration;
	private     int   order;
	private    Date uploadTime;
	private   int     userId;
	private   String   chapterInfo;
	public Chapter() {
		super();
	}
	public Chapter(int id, String name, int album_id, long playNumber, int audioId, long duration, int order,
			Date uploadTime, int userId, String chapterInfo) {
		super();
		this.id = id;
		this.name = name;
		this.album_id = album_id;
		this.playNumber = playNumber;
		this.audioId = audioId;
		this.duration = duration;
		this.order = order;
		this.uploadTime = uploadTime;
		this.userId = userId;
		this.chapterInfo = chapterInfo;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAlbum_id() {
		return album_id;
	}
	public void setAlbum_id(int album_id) {
		this.album_id = album_id;
	}
	public long getPlayNumber() {
		return playNumber;
	}
	public void setPlayNumber(long playNumber) {
		this.playNumber = playNumber;
	}
	public int getAudioId() {
		return audioId;
	}
	public void setAudioId(int audioId) {
		this.audioId = audioId;
	}
	public long getDuration() {
		return duration;
	}
	public void setDuration(long duration) {
		this.duration = duration;
	}
	public int getOrder() {
		return order;
	}
	public void setOrder(int order) {
		this.order = order;
	}
	public Date getUploadTime() {
		return uploadTime;
	}
	public void setUploadTime(Date uploadTime) {
		this.uploadTime = uploadTime;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getChapterInfo() {
		return chapterInfo;
	}
	public void setChapterInfo(String chapterInfo) {
		this.chapterInfo = chapterInfo;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Chapter [id=" + id + ", name=" + name + ", album_id=" + album_id + ", playNumber=" + playNumber
				+ ", audioId=" + audioId + ", duration=" + duration + ", order=" + order + ", uploadTime=" + uploadTime
				+ ", userId=" + userId + ", chapterInfo=" + chapterInfo + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + album_id;
		result = prime * result + audioId;
		result = prime * result + ((chapterInfo == null) ? 0 : chapterInfo.hashCode());
		result = prime * result + (int) (duration ^ (duration >>> 32));
		result = prime * result + id;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + order;
		result = prime * result + (int) (playNumber ^ (playNumber >>> 32));
		result = prime * result + ((uploadTime == null) ? 0 : uploadTime.hashCode());
		result = prime * result + userId;
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
		Chapter other = (Chapter) obj;
		if (album_id != other.album_id)
			return false;
		if (audioId != other.audioId)
			return false;
		if (chapterInfo == null) {
			if (other.chapterInfo != null)
				return false;
		} else if (!chapterInfo.equals(other.chapterInfo))
			return false;
		if (duration != other.duration)
			return false;
		if (id != other.id)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (order != other.order)
			return false;
		if (playNumber != other.playNumber)
			return false;
		if (uploadTime == null) {
			if (other.uploadTime != null)
				return false;
		} else if (!uploadTime.equals(other.uploadTime))
			return false;
		if (userId != other.userId)
			return false;
		return true;
	}
	
}
