package recipe.model;

import org.springframework.web.multipart.MultipartFile;

public class recipe {
	
	private int rnum;// number primary key,
	private String rwriter;// varchar2(50) not null,
	
	private String mcategory;// varchar2(50),
	
	private String rname;// varchar2(50),  //¥ﬂµµ∏Æ≈¡,µ»¿Â¬Ó∞≥, Ω∫≈◊¿Ã≈©
	
	private String rimage;// varchar2(100),
	
	private String ringredients;// varchar2(999),
	
	private String rcontent;// varchar2(3000),
	private int rprice;// int,
	private int rpoint;// int default 10,
	
	private String rinputdate;// varchar2(10) default sysdate
	
	private MultipartFile upload;
	private String upload2;

	public MultipartFile getUpload() {
		return upload;
	}
	public void setUpload(MultipartFile upload) {
		this.upload = upload;
		if(this.upload !=null ){
			System.out.println("===============bean============================");
			System.out.println("upload.getName() : "+upload.getName());
			System.out.println("upload.getOriginalFilename() : "+upload.getOriginalFilename());
			System.out.println("=================================================");
		}
	}
	public String getUpload2() {
		return upload2;
	}
	public void setUpload2(String upload2) {
		this.upload2 = upload2;
	}
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}
	public String getRwriter() {
		return rwriter;
	}
	public void setRwriter(String rwriter) {
		this.rwriter = rwriter;
	}
	public String getMcategory() {
		return mcategory;
	}
	public void setMcategory(String mcategory) {
		this.mcategory = mcategory;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getRimage() {
		return rimage;
	}
	public void setRimage(String rimage) {
		this.rimage = rimage;
	}
	public String getRingredients() {
		return ringredients;
	}
	public void setRingredients(String ringredients) {
		this.ringredients = ringredients;
	}
	public String getRcontent() {
		return rcontent;
	}
	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}
	public int getRprice() {
		return rprice;
	}
	public void setRprice(int rprice) {
		this.rprice = rprice;
	}
	public int getRpoint() {
		return rpoint;
	}
	public void setRpoint(int rpoint) {
		this.rpoint = rpoint;
	}
	public String getRinputdate() {
		return rinputdate;
	}
	public void setRinputdate(String rinputdate) {
		this.rinputdate = rinputdate;
	}
	@Override
	public String toString() {
		return "recipe [rnum=" + rnum + ", rwriter=" + rwriter + ", mcategory=" + mcategory + ", rname=" + rname
				+ ", rimage=" + rimage + ", ringredients=" + ringredients + ", rcontent=" + rcontent + ", rprice="
				+ rprice + ", rpoint=" + rpoint + ", rinputdate=" + rinputdate + ", upload=" + upload + ", upload2="
				+ upload2 + "]";
	}
	
}
