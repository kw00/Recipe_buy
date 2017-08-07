package utility;

public class Paging4 {   
	//페이징 관련 변수	
	private int totalCount = 0 ; //총 레코드 건수
	private int totalPage = 0 ; //전체 페이지 수
	private int pageNumber = 0 ; //보여줄 페이지 넘버(표현 가능한 페이지는 1부터 totalPage까지이다.)
	private int pageSize = 0 ; //한 페이지에 보여줄 건수
	private int beginRow = 0 ; //현재 페이지의 시작 행
	private int endRow = 0 ; //현재 페이지의 끝 행
	private int pageCount = 10 ; //보여줄 페이지 링크 수
	private int beginPage = 0 ; //페이징 처리 시작 페이지 번호
	private int endPage = 0 ; //페이징 처리 끝 페이지 번호
	private int offset = 0 ;
	private int limit = 0 ;
	private String url = "" ; //예시 ==>  http://localhost:9090/ex/list.ab
	private String pagingHtml = "";//하단의 숫자 페이지 링크
	//검색을 위한 변수 추가
	private String whatColumn = "" ; //검색 모드(작성자, 글제목, 전체 검색은 all) 등등
	private String keyword = "" ; //검색할 단어
	private String category;
	
	


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public int getTotalCount() {
		return totalCount;
	}


	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}


	public int getTotalPage() {
		return totalPage;
	}


	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}


	public int getPageNumber() {
		return pageNumber;
	}


	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}


	public int getPageSize() {
		return pageSize;
	}


	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}


	public int getBeginRow() {
		return beginRow;
	}


	public void setBeginRow(int beginRow) {
		this.beginRow = beginRow;
	}


	public int getEndRow() {
		return endRow;
	}


	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}


	public int getPageCount() {
		return pageCount;
	}


	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}


	public int getBeginPage() {
		return beginPage;
	}


	public void setBeginPage(int beginPage) {
		this.beginPage = beginPage;
	}


	public int getEndPage() {
		return endPage;
	}


	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}


	public int getOffset() {
		return offset;
	}


	public void setOffset(int offset) {
		this.offset = offset;
	}


	public int getLimit() {
		return limit;
	}


	public void setLimit(int limit) {
		this.limit = limit;
	}


	public String getUrl() {
		return url;
	}


	public void setUrl(String url) {
		this.url = url;
	}


	public String getPagingHtml() {
		System.out.println("pagingHtml:"+pagingHtml);
		
		return pagingHtml;
	}


	public void setPagingHtml(String pagingHtml) {
		this.pagingHtml = pagingHtml;
	}


	public String getWhatColumn() {
		return whatColumn;
	}


	public void setWhatColumn(String whatColumn) {
		this.whatColumn = whatColumn;
	}


	public String getKeyword() {
		return keyword;
	}


	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}


	public Paging4(
			String _pageNumber, 
			String _pageSize,  
			int totalCount,
			String url, 
			String whatColumn, 
			String keyword) {		

		if(  _pageNumber == null || _pageNumber.equals("null") || _pageNumber.equals("")  ){
			System.out.println("_pageNumber:"+_pageNumber); // null
			_pageNumber = "1" ;
		}
		this.pageNumber = Integer.parseInt( _pageNumber ) ; 

		if( _pageSize == null || _pageSize.equals("null") || _pageSize.equals("") ){
			_pageSize = "9" ;
		}		
		this.pageSize = Integer.parseInt( _pageSize ) ;

		this.offset = ( pageNumber - 1 ) * pageSize ; 
		this.limit = pageSize ; // �� �������� ������ �Ǽ�

		this.totalCount = totalCount ; 

		this.totalPage = (int)Math.ceil((double)this.totalCount / this.pageSize) ;
		
		this.beginRow = ( this.pageNumber - 1 )  * this.pageSize  + 1 ;
		this.endRow =  this.pageNumber * this.pageSize ;
		
		if( this.endRow > this.totalCount ){
			this.endRow = this.totalCount  ;
		}

		this.beginPage = ( this.pageNumber - 1 ) / this.pageCount * this.pageCount + 1  ;
		this.endPage = this.beginPage + this.pageCount - 1 ;
				
		if( this.endPage > this.totalPage ){
			this.endPage = this.totalPage ;
		}

		this.url = url ; //  /ex/list.ab
		this.whatColumn = whatColumn ;
		this.keyword = keyword ;
		this.pagingHtml = getPagingHtml(url) ;
	
	}
	
	public Paging4(String pageNumber2, String pageSize2, int totalCount2, String url2, String whatColumn2,
			String keyword2, String category) {
		// TODO Auto-generated constructor stub
		if(  pageNumber2 == null || pageNumber2.equals("null") || pageNumber2.equals("")  ){
			System.out.println("_pageNumber:"+pageNumber2); // null
			pageNumber2 = "1" ;
		}
		this.pageNumber = Integer.parseInt( pageNumber2 ) ; 

		if( pageSize2 == null || pageSize2.equals("null") || pageSize2.equals("") ){
			pageSize2 = "9" ;
		}		
		if( category == null || category.equals("null") || category.equals("")){
			category = "null" ;
		}
		this.pageSize = Integer.parseInt( pageSize2 ) ;

		this.offset = ( pageNumber - 1 ) * pageSize ; 
		this.limit = pageSize ; // �� �������� ������ �Ǽ�

		this.totalCount = totalCount2 ; 

		this.totalPage = (int)Math.ceil((double)this.totalCount / this.pageSize) ;
		
		this.beginRow = ( this.pageNumber - 1 )  * this.pageSize  + 1 ;
		this.endRow =  this.pageNumber * this.pageSize ;
		
		if( this.endRow > this.totalCount ){
			this.endRow = this.totalCount  ;
		}

		this.beginPage = ( this.pageNumber - 1 ) / this.pageCount * this.pageCount + 1  ;
		this.endPage = this.beginPage + this.pageCount - 1 ;
				
		if( this.endPage > this.totalPage ){
			this.endPage = this.totalPage ;
		}

		this.url = url2 ; //  /ex/list.ab
		this.whatColumn = whatColumn2 ;
		this.keyword = keyword2 ;
		this.category = category;
		this.pagingHtml = getPagingHtml(url) ;
	}


	private String getPagingHtml( String url ){ //����¡ ���ڿ��� �����.
		System.out.println("getPagingHtml url:"+url); 
		
		String result = "" ;
		String added_param = "&whatColumn=" + whatColumn + "&keyword=" + keyword ; 
		
		if (this.beginPage != 1) { //����, pageSize:�� ȭ�鿡 ���̴� ���ڵ� ��
			result += "&nbsp;<li><a href='" + url
					+ "?pageNumber=" + ( 1 ) + "&pageSize=" + this.pageSize
					+"&mcategory="+this.category
					+ "'>맨 처음</a></li>&nbsp;" ;
			result += "&nbsp;<li><a href='" + url 
					+ "?pageNumber=" + (this.beginPage - 1 ) + "&pageSize=" + this.pageSize
					+"&mcategory="+this.category
					+ added_param + "'>이전</a></li>&nbsp;" ;
		}
		
		//���
		for (int i = this.beginPage; i <= this.endPage ; i++) {
			if ( i == this.pageNumber ) {
				result += "&nbsp;<li class='active'><a herf='#'>" + i + "</a></li>&nbsp;"   ;
						
			} else {
				result += "&nbsp;<li><a href='" + url 
						+ "?pageNumber=" + i + "&pageSize=" + this.pageSize
						+"&mcategory="+this.category
						+ added_param + "'>" + i + "</a></li>&nbsp;" ;
				
			}
		}
		System.out.println("result:"+result); // ��� �κи� ����غ�, �� �������� ����, �������� ���Ե� result�� ���ϵȴ�. 
		System.out.println();
		// result:&nbsp;<a href='/ex/list.ab?pageNumber=1&pageSize=2&whatColumn=null&keyword=null'>1</a>&nbsp;&nbsp;<font color='red'>2</font>&nbsp;&nbsp;<a href='/ex/list.ab?pageNumber=3&pageSize=2&whatColumn=null&keyword=null'>3</a>&nbsp;
		
		if ( this.endPage != this.totalPage) { // ����
			
			result += "&nbsp;<li><a href='" + url  
					+ "?pageNumber=" + (this.endPage + 1 ) + "&pageSize=" + this.pageSize
					+"&mcategory="+this.category
					+ added_param + "'>다음</a></li>&nbsp;" ;
			
			result += "&nbsp;<li><a href='" + url  
					+ "?pageNumber=" + (this.totalPage ) + "&pageSize=" + this.pageSize
					+"&mcategory="+this.category
					+ added_param + "'>맨 끝</a></li>&nbsp;" ;
		}		
		
		return result ;
	}	
	
	
	
}

