package member.model;

import javax.validation.constraints.AssertFalse;
import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;


public class Member {
	private int num; //number primary key,
	
	@NotEmpty(message="이름을 입력하세요.")
	private String name; //varchar2(20) not null,
	
	@NotEmpty(message="아이디를 입력하세요.")
	private String id; //varchar2(20) not null,
	
	@NotEmpty(message="비밀번호를 입력하세요.")
	@Size(min=4, message="패스워드는 4자 이상이어야 합니다.")
	private String password; //varchar2(20),
	
	@NotEmpty(message="닉네임을 입력하세요.")
	private String nickname; //varchar2(20),
	
	@NotEmpty(message="이메일을 입력하세요.")
	private String email; //varchar2(25),
	
	private String phone; //varchar2(20),
	
	@NotEmpty(message="주소를 입력하세요.")
	private String address; //varchar2(200),
	
	@NotEmpty(message="우편번호를 입력하세요.")
	private String zipcode; //varchar2(30),
	
	@NotEmpty(message="생년월일을 입력하세요.")
	private String ssn; //varchar2(20),
	
	@NotNull(message="성별을 선택해 주세요.")
	private String gender; //varchar2(10),
	
	private String joindate; //varchar2(20),
	
	@NotNull(message="사용자를 선택해주세요.")
	private char admin; //char(20)
	
	//DB에 저장은 되지 않는 것들
	@NotEmpty(message="번호를 입력하세요.")
	private String phone1; //varchar2(20),
	@NotEmpty(message="번호를 입력하세요.")
	private String phone2; //varchar2(20),
	@NotEmpty(message="번호를 입력하세요.")
	private String phone3; //varchar2(20),
	
	@NotEmpty(message="비밀번호 확인을 입력하세요.")
	@Size(min=4, message="패스워드는 4자 이상이어야 합니다.")
	private String passwordcheck; //varchar2(20),
	
	//비밀번호 확인 체크
	@AssertTrue(message="비밀번호가 같지 않습니다.")
	private boolean bool;
	
	
	
	public String getPasswordcheck() {
		return passwordcheck;
	}
	public void setPasswordcheck(String passwordcheck) {
		this.passwordcheck = passwordcheck;
	}
	public boolean isBool() {
		return bool;
	}
	public void setBool(boolean bool) {
		this.bool = bool;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
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
	public String getPhone1() {
		return phone1;
	}
	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}
	public String getPhone2() {
		return phone2;
	}
	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}
	public String getPhone3() {
		return phone3;
	}
	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getSsn() {
		return ssn;
	}
	public void setSsn(String ssn) {
		this.ssn = ssn;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getJoindate() {
		return joindate;
	}
	public void setJoindate(String joindate) {
		this.joindate = joindate;
	}
	public char getAdmin() {
		return admin;
	}
	public void setAdmin(char admin) {
		this.admin = admin;
	}
	
	@Override
	public String toString() {
		return "Member [num=" + num + ", name=" + name + ", id=" + id + ", password=" + password + ", nickname="
				+ nickname + ", email=" + email + ", phone=" + phone + ", phone1=" + phone1 + ", phone2=" + phone2
				+ ", phone3=" + phone3 + ", address=" + address + ", zipcode=" + zipcode + ", ssn=" + ssn + ", gender="
				+ gender + ", joindate=" + joindate + ", admin=" + admin + "]";
	}
	
	
}
