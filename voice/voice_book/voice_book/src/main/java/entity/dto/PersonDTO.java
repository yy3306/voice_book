package entity.dto;

import java.io.Serializable;

public class PersonDTO  implements  Serializable{

	private static final long serialVersionUID = 1L;
private  int id;
   private  String header;
   private  String name;
   private  long   albumNumber;
   private  long   chapterNumber;
   private  long  fans;
   private  String  signature;
  private  String  authorInf;
public PersonDTO() {
	super();
}
public PersonDTO(int id, String header, String name, long albumNumber, long chapterNumber, long fans, String signature,
		String authorInf) {
	super();
	this.id = id;
	this.header = header;
	this.name = name;
	this.albumNumber = albumNumber;
	this.chapterNumber = chapterNumber;
	this.fans = fans;
	this.signature = signature;
	this.authorInf = authorInf;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getHeader() {
	return header;
}
public void setHeader(String header) {
	this.header = header;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public long getAlbumNumber() {
	return albumNumber;
}
public void setAlbumNumber(long albumNumber) {
	this.albumNumber = albumNumber;
}
public long getChapterNumber() {
	return chapterNumber;
}
public void setChapterNumber(long chapterNumber) {
	this.chapterNumber = chapterNumber;
}
public long getFans() {
	return fans;
}
public void setFans(long fans) {
	this.fans = fans;
}
public String getSignature() {
	return signature;
}
public void setSignature(String signature) {
	this.signature = signature;
}
public String getAuthorInf() {
	return authorInf;
}
public void setAuthorInf(String authorInf) {
	this.authorInf = authorInf;
}
@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + (int) (albumNumber ^ (albumNumber >>> 32));
	result = prime * result + ((authorInf == null) ? 0 : authorInf.hashCode());
	result = prime * result + (int) (chapterNumber ^ (chapterNumber >>> 32));
	result = prime * result + (int) (fans ^ (fans >>> 32));
	result = prime * result + ((header == null) ? 0 : header.hashCode());
	result = prime * result + id;
	result = prime * result + ((name == null) ? 0 : name.hashCode());
	result = prime * result + ((signature == null) ? 0 : signature.hashCode());
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
	PersonDTO other = (PersonDTO) obj;
	if (albumNumber != other.albumNumber)
		return false;
	if (authorInf == null) {
		if (other.authorInf != null)
			return false;
	} else if (!authorInf.equals(other.authorInf))
		return false;
	if (chapterNumber != other.chapterNumber)
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
	if (name == null) {
		if (other.name != null)
			return false;
	} else if (!name.equals(other.name))
		return false;
	if (signature == null) {
		if (other.signature != null)
			return false;
	} else if (!signature.equals(other.signature))
		return false;
	return true;
}
@Override
public String toString() {
	return "PersonDTO [id=" + id + ", header=" + header + ", name=" + name + ", albumNumber=" + albumNumber
			+ ", chapterNumber=" + chapterNumber + ", fans=" + fans + ", signature=" + signature + ", authorInf="
			+ authorInf + "]";
}

}
