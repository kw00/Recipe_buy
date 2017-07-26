package utility;

public class Paging3 {
   private int page = 1; //현재 페이지 (set)
   private int totalCount; //row의 전체 수 (set)
   private int beginPage; //출력 시작
   private int endPage; //출력 끝
   private int displayRow = 10; //한 페이지에 몇개의 로우를 표시 할 것인가 (선택 set)
   private int displayPage = 10; //한 페이지에 몇ㄱ의 페이지를 표시 할 것인가 (선택 set)
   boolean prev; //prev 버튼의 표시 유/무
   boolean next; //next 버튼의 표시 유/무
   private int startNum;
   private int endNum;
   
   public int getPage() {
      return page;
   }
   public void setPage(int page) {
      this.page = page;
   }
   public int getTotalCount() {
      return totalCount;
   }
   public void setTotalCount(int totalCount) {
      //setTotalCount()를 꼭 호출해야 paging이 되기 때문에 
      //paging()함수를 setTotalCount()를 호출했을때 자동으로 호출되게 한다.
      this.totalCount = totalCount;
      paging3();
   }
   public int getDisplayRow() {
      return displayRow;
   }
   public void setDisplayRow(int displayRow) {
      this.displayRow = displayRow;
   }
   public int getDisplayPage() {
      return displayPage;
   }
   public void setDisplayPage(int displayPage) {
      this.displayPage = displayPage;
   }
   public int getBeginPage() {
      return beginPage;
   }
   public int getEndPage() {
      return endPage;
   }
   public boolean isPrev() {
      return prev;
   }
   public boolean isNext() {
      return next;
   }
   public int getStartNum() {
	return startNum;
   }
   public int getEndNum() {
	return endNum;
   }
   
	private void paging3() {
		// prev, next, beginPage, endPage를 계산해서 만든다.
		// 2+(10-1) = 11, 11/10 = 1, 1*10 = 10
		// 10+(10-1) = 19, 19/10 = 1, 1*10 = 10
		// 11+(10-1) = 20, 20/10 = 2, 2*10 = 20
		// 20+(10-1) = 29, 29/10 = 2, 2*10 = 20
		// 111+(10-1) = 120, 120/10 = 12, 12*10 = 120
		
		//(startNum) 2페이지이면 row가 21~40 = (2-1)*row+1 
		startNum = (page - 1) * displayRow + 1;
		endNum = page * displayRow;
		// (2+9)/10 * 10
		endPage = ((page + (displayPage - 1)) / displayPage) * displayPage;
		// 1/10 0.1 (올림) 1
		// Math.ceil 올림
		// endPage = ((int)Math.ceil(page/(double)displayPage))*displayPage;

		beginPage = endPage - (displayPage - 1);

		// 글 32개
		// 32/10 3.2 (올림) 4페이지
		// 2 = ? 2/10
		int totalPage = (int) Math.ceil(totalCount / (double) displayRow);

		if (totalPage < endPage) {
			endPage = totalPage;
			next = false;
		} else {
			next = true;
		}
		prev = (beginPage == 1) ? false : true; // page가 11 이상일 때만 나온다.
	}

}