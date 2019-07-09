package entity;

import java.io.Serializable;
import java.util.Date;
/**
 *  专辑 实体类
 * @author zzc
 *
 */
public class Album   implements  Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    private  int  id;
    private  String  name;
    private  int  user_id;
    private  String  introduction;
    private  int   audienceSex;
    private  String  audienceCrowd;
    private  boolean  isCompleted;
    private  boolean  isFree;
    private  int    catagory_id;
    private   String  cover;
    private   int     subscibeNumber;
    private   boolean   isComment;
    private  int        isPublic;
    private  String      authorInf;
    private   long            pvs;
	public Album() {
		
	}
	public Album(int id, String name, int user_id, String introduction, int audienceSex, String audienceCrowd,
			boolean isCompleted, boolean isFree, int catagory_id, String cover, int subscibeNumber, boolean isComment,
			int isPublic, String authorInf,long  pvs) {
		super();
		this.id = id;
		this.name = name;
		this.user_id = user_id;
		this.introduction = introduction;
		this.audienceSex = audienceSex;
		this.audienceCrowd = audienceCrowd;
		this.isCompleted = isCompleted;
		this.isFree = isFree;
		this.catagory_id = catagory_id;
		this.cover = cover;
		this.subscibeNumber = subscibeNumber;
		this.isComment = isComment;
		this.isPublic = isPublic;
		this.authorInf = authorInf;
		this.pvs=pvs;
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
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public int getAudienceSex() {
		return audienceSex;
	}
	public void setAudienceSex(int audienceSex) {
		this.audienceSex = audienceSex;
	}
	public String getAudienceCrowd() {
		return audienceCrowd;
	}
	public void setAudienceCrowd(String audienceCrowd) {
		this.audienceCrowd = audienceCrowd;
	}
	public boolean getIsCompleted() {
		return isCompleted;
	}
	public void setIsCompleted(boolean isCompleted) {
		this.isCompleted = isCompleted;
	}
	public boolean getIsFree() {
		return isFree;
	}
	public void setIsFree(boolean isFree) {
		this.isFree = isFree;
	}
	public int getCatagory_id() {
		return catagory_id;
	}
	public void setCatagory_id(int catagory_id) {
		this.catagory_id = catagory_id;
	}
	public String getCover() {
		return cover;
	}
	public void setCover(String cover) {
		this.cover = cover;
	}
	public int getSubscibeNumber() {
		return subscibeNumber;
	}
	public void setSubscibeNumber(int subscibeNumber) {
		this.subscibeNumber = subscibeNumber;
	}
	public boolean getIsComment() {
		return isComment;
	}
	public void setIsComment(boolean isComment) {
		this.isComment = isComment;
	}
	public int getIsPublic() {
		return isPublic;
	}
	public void setIsPublic(int isPublic) {
		this.isPublic = isPublic;
	}
	public String getAuthorInf() {
		return authorInf;
	}
	public void setAuthorInf(String authorInf) {
		this.authorInf = authorInf;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	

	
	public long getPvs() {
		return pvs;
	}
	public void setPvs(long pvs) {
		this.pvs = pvs;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((audienceCrowd == null) ? 0 : audienceCrowd.hashCode());
		result = prime * result + audienceSex;
		result = prime * result + ((authorInf == null) ? 0 : authorInf.hashCode());
		result = prime * result + catagory_id;
		result = prime * result + ((cover == null) ? 0 : cover.hashCode());
		result = prime * result + id;
		result = prime * result + ((introduction == null) ? 0 : introduction.hashCode());
		result = prime * result + (isComment ? 1231 : 1237);
		result = prime * result + (isCompleted ? 1231 : 1237);
		result = prime * result + (isFree ? 1231 : 1237);
		result = prime * result + isPublic;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + (int) (pvs ^ (pvs >>> 32));
		result = prime * result + subscibeNumber;
		result = prime * result + user_id;
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
		Album other = (Album) obj;
		if (audienceCrowd == null) {
			if (other.audienceCrowd != null)
				return false;
		} else if (!audienceCrowd.equals(other.audienceCrowd))
			return false;
		if (audienceSex != other.audienceSex)
			return false;
		if (authorInf == null) {
			if (other.authorInf != null)
				return false;
		} else if (!authorInf.equals(other.authorInf))
			return false;
		if (catagory_id != other.catagory_id)
			return false;
		if (cover == null) {
			if (other.cover != null)
				return false;
		} else if (!cover.equals(other.cover))
			return false;
		if (id != other.id)
			return false;
		if (introduction == null) {
			if (other.introduction != null)
				return false;
		} else if (!introduction.equals(other.introduction))
			return false;
		if (isComment != other.isComment)
			return false;
		if (isCompleted != other.isCompleted)
			return false;
		if (isFree != other.isFree)
			return false;
		if (isPublic != other.isPublic)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (pvs != other.pvs)
			return false;
		if (subscibeNumber != other.subscibeNumber)
			return false;
		if (user_id != other.user_id)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Album [id=" + id + ", name=" + name + ", user_id=" + user_id + ", introduction=" + introduction
				+ ", audienceSex=" + audienceSex + ", audienceCrowd=" + audienceCrowd + ", isCompleted=" + isCompleted
				+ ", isFree=" + isFree + ", catagory_id=" + catagory_id + ", cover=" + cover + ", subscibeNumber="
				+ subscibeNumber + ", isComment=" + isComment + ", isPublic=" + isPublic + ", authorInf=" + authorInf
				+ ", pvs=" + pvs + "]";
	}
	
	
     	
}
