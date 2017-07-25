package food.model;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

public class food {
	private int fnum;
	@NotEmpty(message="상품의 이름을 입력하세요.")
	private String fname;
	@NotEmpty(message="상품의 카테고리를 입력하세요.")
	private String fcategory;
	private MultipartFile upload;
	private String upload2;
	private String fimage;
	@NotNull(message="수량을 입력하세요.")
	private int fqty;
	@NotNull(message="가격을 입력하세요.")
	private int fprice;
	private String fcontents;
	private String fcompany;
	private int fpoint;
	@NotNull(message="입고일을 입력하세요.")
	private String finputdate;

	public food() {
		super();
	}
	
	public food(int fnum, String fname, String fcategory, MultipartFile upload, String upload2, String fimage, int fqty,
			int fprice, String fcontents, String fcompany, int fpoint, String finputdate) {
		super();
		this.fnum = fnum;
		this.fname = fname;
		this.fcategory = fcategory;
		this.upload = upload;
		this.upload2 = upload2;
		this.fimage = fimage;
		this.fqty = fqty;
		this.fprice = fprice;
		this.fcontents = fcontents;
		this.fcompany = fcompany;
		this.fpoint = fpoint;
		this.finputdate = finputdate;
	}

	public MultipartFile getUpload() {
		return upload;
	}

	public void setUpload(MultipartFile upload) {
		this.upload = upload;
		if(this.upload!=null){
			System.out.println("upload.getName() : "+upload.getName());
			System.out.println("upload.getOriginalFileName() : "+upload.getOriginalFilename());//Tulip.jpg
			this.fimage = this.upload.getOriginalFilename();
		}
	}
	
	public String getUpload2() {
		return upload2;
	}
	
	public void setUpload2(String upload2) {
		this.upload2 = upload2;
	}

	public int getFnum() {
		return fnum;
	}
	public void setFnum(int fnum) {
		this.fnum = fnum;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getFcategory() {
		return fcategory;
	}
	public void setFcategory(String fcategory) {
		this.fcategory = fcategory;
	}
	public String getFimage() {
		return fimage;
	}
	public void setFimage(String fimage) {
		this.fimage = fimage;
	}
	public int getFqty() {
		return fqty;
	}
	public void setFqty(int fqty) {
		this.fqty = fqty;
	}
	public int getFprice() {
		return fprice;
	}
	public void setFprice(int fprice) {
		this.fprice = fprice;
	}
	public String getFcontents() {
		return fcontents;
	}
	public void setFcontents(String fcontents) {
		this.fcontents = fcontents;
	}
	public int getFpoint() {
		return fpoint;
	}
	public void setFpoint(int fpoint) {
		this.fpoint = fpoint;
	}
	public String getFinputdate() {
		return finputdate;
	}
	public void setFinputdate(String finputdate) {
		this.finputdate = finputdate;
	}
	public String getFcompany() {
		return fcompany;
	}
	public void setFcompany(String fcompany) {
		this.fcompany = fcompany;
	}
}
