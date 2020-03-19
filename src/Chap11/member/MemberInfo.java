package Chap11.member;

import java.util.Date;

//예제에서 사용할 자바빈 클래스(회원 정보 저장)
//자바빈이란 반복적으로 사용되는 코드를 분리하여 작성한 클래스
//자바빈은 속성과 메소드로 이루어져 있으며, 데이터의 처리를 담당
//https://hees-dev.tistory.com/6
public class MemberInfo {

	private String id;
	private String password;
	private String name;
	private String address;
	private Date registerDate;
	private String email;
	
	public String getId() {
		return id;
	}
	public void setId(String val) {
		this.id = val;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String val) {
		this.password = val;
	}
	public String getName() {
		return name;
	}
	public void setName(String val) {
		this.name = val;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String val) {
		this.address = val;
	}
	public Date getRegisterDate() {
		return registerDate;
	}
	public void setRegisterDate(Date val) {
		this.registerDate = val;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String val) {
		this.email = val;
	}
}
