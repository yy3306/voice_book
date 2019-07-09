package entity;

import java.io.Serializable;

public class Audio implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
  private  int id;
  private  String name;
  private  String path;
  private  String  uuid;
public Audio() {
	super();
}
public Audio(int id, String name, String path, String uuid) {
	super();
	this.id = id;
	this.name = name;
	this.path = path;
	this.uuid = uuid;
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
public String getPath() {
	return path;
}
public void setPath(String path) {
	this.path = path;
}
public String getUuid() {
	return uuid;
}
public void setUuid(String uuid) {
	this.uuid = uuid;
}
public static long getSerialversionuid() {
	return serialVersionUID;
}
@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + id;
	result = prime * result + ((name == null) ? 0 : name.hashCode());
	result = prime * result + ((path == null) ? 0 : path.hashCode());
	result = prime * result + ((uuid == null) ? 0 : uuid.hashCode());
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
	Audio other = (Audio) obj;
	if (id != other.id)
		return false;
	if (name == null) {
		if (other.name != null)
			return false;
	} else if (!name.equals(other.name))
		return false;
	if (path == null) {
		if (other.path != null)
			return false;
	} else if (!path.equals(other.path))
		return false;
	if (uuid == null) {
		if (other.uuid != null)
			return false;
	} else if (!uuid.equals(other.uuid))
		return false;
	return true;
}
@Override
public String toString() {
	return "Audio [id=" + id + ", name=" + name + ", path=" + path + ", uuid=" + uuid + "]";
}

 
	
}
