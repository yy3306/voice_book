package entity;

import java.io.Serializable;

import org.apache.ibatis.type.Alias;

@Alias("UserBean")
public class User implements Serializable {

	private static final long serialVersionUID = -3363120264501521428L;
	
	private int id;
	private String username;
	private String password;
	private String code; //验证码
	
	public User() {
		super();
	}



	public User(int id, String username, String password) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
	
	}



	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + "]";
	}





	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	//@Transient
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
	//--和集合框架中的Set有关，所以要重写hashCode()
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((username == null) ? 0 : username.hashCode());
		//long temp;
		result = prime * result + ((password == null) ? 0 : password.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		//-- 要写出equals方法的几个特性
		if (this == obj)  //-- 自反性
			return true;
		if (obj == null)   //-- 非空性
			return false;
		if (!(obj instanceof User))	//-- 类型是不是一致
			return false;
		//-- 真正比较内容代码
		User other = (User) obj;
		if (username == null) {
			if (other.username != null)
				return false;
		} else if (!username.equals(other.username))
			return false;
		return true;
	}
	

}
