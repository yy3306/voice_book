package entity;

import java.io.Serializable;
import java.util.Date;




public class Person implements Serializable{
	
	private static final long serialVersionUID = -4012723554250981780L;
	private int id;
	private String nickName;
	private String signature;
	private String phoneNum;
	private Date registTime;
	private String header;
	private int fans;
	private String realName;
	private String sex;
	private String birth;
	private String anchorInfo;
	private int userId;
	public Person() {
		super();
		
	}
	public Person(int id, String nickName, String signature, String phoneNum, Date registTime, String header, int fans,
			String realName, String sex, String birth, String anchorInfo, int userId) {
		super();
		this.id = id;
		this.nickName = nickName;
		this.signature = signature;
		this.phoneNum = phoneNum;
		this.registTime = registTime;
		this.header = header;
		this.fans = fans;
		this.realName = realName;
		this.sex = sex;
		this.birth = birth;
		this.anchorInfo = anchorInfo;
		this.userId = userId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getSignature() {
		return signature;
	}
	public void setSignature(String signature) {
		this.signature = signature;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public Date getRegistTime() {
		return registTime;
	}
	public void setRegistTime(Date registTime) {
		this.registTime = registTime;
	}
	public String getHeader() {
		return header;
	}
	public void setHeader(String header) {
		this.header = header;
	}
	public int getFans() {
		return fans;
	}
	public void setFans(int fans) {
		this.fans = fans;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getAnchorInfo() {
		return anchorInfo;
	}
	public void setAnchorInfo(String anchorInfo) {
		this.anchorInfo = anchorInfo;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	@Override
	public String toString() {
		return "Person [id=" + id + ", nickName=" + nickName + ", signature=" + signature + ", phoneNum=" + phoneNum
				+ ", registTime=" + registTime + ", header=" + header + ", fans=" + fans + ", realName=" + realName
				+ ", sex=" + sex + ", birth=" + birth + ", anchorInfo=" + anchorInfo + ", userId=" + userId + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((anchorInfo == null) ? 0 : anchorInfo.hashCode());
		result = prime * result + ((birth == null) ? 0 : birth.hashCode());
		result = prime * result + (int) (fans ^ (fans >>> 32));
		result = prime * result + ((header == null) ? 0 : header.hashCode());
		result = prime * result + id;
		result = prime * result + ((nickName == null) ? 0 : nickName.hashCode());
		result = prime * result + ((phoneNum == null) ? 0 : phoneNum.hashCode());
		result = prime * result + ((realName == null) ? 0 : realName.hashCode());
		result = prime * result + ((registTime == null) ? 0 : registTime.hashCode());
		result = prime * result + ((sex == null) ? 0 : sex.hashCode());
		result = prime * result + ((signature == null) ? 0 : signature.hashCode());
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
		Person other = (Person) obj;
		if (anchorInfo == null) {
			if (other.anchorInfo != null)
				return false;
		} else if (!anchorInfo.equals(other.anchorInfo))
			return false;
		if (birth == null) {
			if (other.birth != null)
				return false;
		} else if (!birth.equals(other.birth))
			return false;
		if (fans != other.fans)
			return false;
		if (header == null) {
			if (other.header != null)
				return false;
		} else if (!header.equals(other.header))
			return false;
		if (id != other.id)
			return false;
		if (nickName == null) {
			if (other.nickName != null)
				return false;
		} else if (!nickName.equals(other.nickName))
			return false;
		if (phoneNum == null) {
			if (other.phoneNum != null)
				return false;
		} else if (!phoneNum.equals(other.phoneNum))
			return false;
		if (realName == null) {
			if (other.realName != null)
				return false;
		} else if (!realName.equals(other.realName))
			return false;
		if (registTime == null) {
			if (other.registTime != null)
				return false;
		} else if (!registTime.equals(other.registTime))
			return false;
		if (sex == null) {
			if (other.sex != null)
				return false;
		} else if (!sex.equals(other.sex))
			return false;
		if (signature == null) {
			if (other.signature != null)
				return false;
		} else if (!signature.equals(other.signature))
			return false;
		if (userId != other.userId)
			return false;
		return true;
	}
	
}