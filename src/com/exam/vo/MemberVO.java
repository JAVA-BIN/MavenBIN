package com.exam.vo;

public class MemberVO {
	private String id;
	private String passwd;
	private String name;
	private String email;
	private String gender;
	private String bean;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBean() {
		return bean;
	}
	public void setBean(String bean) {
		this.bean = bean;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("MemberVO [id=").append(id).append(", passwd=").append(passwd).append(", name=").append(name)
				.append(", email=").append(email).append(", gender=").append(gender).append(", bean=").append(bean)
				.append("]");
		return builder.toString();
	}

}
