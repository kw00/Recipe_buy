package notice.model;

import java.sql.Timestamp;

import org.hibernate.validator.constraints.NotEmpty;

public class Notice {
	private int num; //number not null primary key,
	private String writer; //varchar2(10) not null,
	@NotEmpty(message="제목을 입력하세요.")
	private String subject; //varchar2(20) not null,
	@NotEmpty(message="패스워드를 입력하세요.")
	private String passwd; //varchar2(12) not null,
	private Timestamp regdate; //date default sysdate,
	private int readcount; //int default 0,
	private int ref; //number not null,
	private int restep; //number not null,
	private int relevel; //number not null,
	private String content; //varchar2(20) not null,
	private String ip; //varchar2(15) not null
	private String rank;
	 
	public String getRank() {
		return rank;
	}
	public void setRank(String rank) {
		this.rank = rank;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getRestep() {
		return restep;
	}
	public void setRestep(int restep) {
		this.restep = restep;
	}
	public int getRelevel() {
		return relevel;
	}
	public void setRelevel(int relevel) {
		this.relevel = relevel;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
}
