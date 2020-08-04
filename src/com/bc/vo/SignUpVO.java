package com.bc.vo;

public class SignUpVO {
	
	private String userid, password, name, email, phone, addr;

	public SignUpVO(String name, String email, String phone, String addr) {
		super();
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.addr = addr;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	@Override
	public String toString() {
		return "SignUpVO [userid=" + userid + ", password=" + password + ", name=" + name + ", email=" + email
				+ ", phone=" + phone + ", addr=" + addr + "]";
	}
	
	

}
