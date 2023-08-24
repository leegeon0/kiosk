package com.kiosk.app.infra.star;
public class StarVo {

	private Integer starSeq;
	private Integer star;
	private String starDate;
	private Integer menu_seq;
	private String averageStar;
	private String category;
//	검색
	private Integer shOption;
	private String shKeyword;
//	검색
	
//	paging
	private int thisPage = 1;									// 현재 페이지
//	private int rowNumToShow = Constants.ROW_NUM_TO_SHOW;		// 화면에 보여줄 데이터 줄 갯수
//	private int pageNumToShow = Constants.PAGE_NUM_TO_SHOW;		// 화면에 보여줄 페이징 번호 갯수
	
	private int rowNumToShow = 10;		// 화면에 보여줄 데이터 줄 갯수
	private int pageNumToShow = 5;		// 화면에 보여줄 페이징 번호 갯수

	private int totalRows;										// 전체 데이터 갯수
	private int totalPages;										// 전체 페이지 번호
	private int startPage;										// 시작 페이지 번호
	private int endPage;										// 마지막 페이지 번호
	
	private int startRnumForOracle = 1;							// 쿼리 시작 row
	private int endRnumForOracle;								// 쿼리 끝 row
	private Integer RNUM;

	private int startRnumForMysql = 0;	
	
	
	
	
	
	
	public String getAverageStar() {
		return averageStar;
	}
	public void setAverageStar(String averageStar) {
		this.averageStar = averageStar;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public Integer getShOption() {
		return shOption;
	}
	public void setShOption(Integer shOption) {
		this.shOption = shOption;
	}
	public String getShKeyword() {
		return shKeyword;
	}
	public void setShKeyword(String shKeyword) {
		this.shKeyword = shKeyword;
	}
	public int getThisPage() {
		return thisPage;
	}
	public void setThisPage(int thisPage) {
		this.thisPage = thisPage;
	}
	public int getRowNumToShow() {
		return rowNumToShow;
	}
	public void setRowNumToShow(int rowNumToShow) {
		this.rowNumToShow = rowNumToShow;
	}
	public int getPageNumToShow() {
		return pageNumToShow;
	}
	public void setPageNumToShow(int pageNumToShow) {
		this.pageNumToShow = pageNumToShow;
	}
	public int getTotalRows() {
		return totalRows;
	}
	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}
	public int getTotalPages() {
		return totalPages;
	}
	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getStartRnumForOracle() {
		return startRnumForOracle;
	}
	public void setStartRnumForOracle(int startRnumForOracle) {
		this.startRnumForOracle = startRnumForOracle;
	}
	public int getEndRnumForOracle() {
		return endRnumForOracle;
	}
	public void setEndRnumForOracle(int endRnumForOracle) {
		this.endRnumForOracle = endRnumForOracle;
	}
	public Integer getRNUM() {
		return RNUM;
	}
	public void setRNUM(Integer rNUM) {
		RNUM = rNUM;
	}
	public int getStartRnumForMysql() {
		return startRnumForMysql;
	}
	public void setStartRnumForMysql(int startRnumForMysql) {
		this.startRnumForMysql = startRnumForMysql;
	}

	public Integer getStarSeq() {
		return starSeq;
	}

	public void setStarSeq(Integer starSeq) {
		this.starSeq = starSeq;
	}

	public Integer getStar() {
		return star;
	}
	public void setStar(Integer star) {
		this.star = star;
	}
	public String getStarDate() {
		return starDate;
	}
	public void setStarDate(String starDate) {
		this.starDate = starDate;
	}

	public Integer getMenu_seq() {
		return menu_seq;
	}

	public void setMenu_seq(Integer menu_seq) {
		this.menu_seq = menu_seq;
	}

	public void setParamsPaging(int totalRows) {
		
		//		setThisPage(3);
		
				setTotalRows(totalRows);
		
				if (getTotalRows() == 0) {
					setTotalPages(1);
				} else {
					setTotalPages(getTotalRows() / getRowNumToShow());
				}
		
				if (getTotalRows() % getRowNumToShow() > 0) {
					setTotalPages(getTotalPages() + 1);
				}
		
				if (getTotalPages() < getThisPage()) {
					setThisPage(getTotalPages());
				}
				
				setStartPage(((getThisPage() - 1) / getPageNumToShow()) * getPageNumToShow() + 1);
		
				setEndPage(getStartPage() + getPageNumToShow() - 1);
		
				if (getEndPage() > getTotalPages()) {
					setEndPage(getTotalPages());
				}
				
				setEndRnumForOracle((getRowNumToShow() * getThisPage()));
				setStartRnumForOracle((getEndRnumForOracle() - getRowNumToShow()) + 1);
				if (getStartRnumForOracle() < 1) setStartRnumForOracle(1);
				
				if (thisPage == 1) {
					setStartRnumForMysql(0);
				} else {
					setStartRnumForMysql((getRowNumToShow() * (getThisPage()-1)));
				}
				
				System.out.println("getThisPage():" + getThisPage());
				System.out.println("getTotalRows():" + getTotalRows());
				System.out.println("getRowNumToShow():" + getRowNumToShow());
				System.out.println("getTotalPages():" + getTotalPages());
				System.out.println("getStartPage():" + getStartPage());
				System.out.println("getEndPage():" + getEndPage());		
				System.out.println("getStartRnumForOracle():" + getStartRnumForOracle());
				System.out.println("getEndRnumForOracle():" + getEndRnumForOracle());
				System.out.println("getStartRnumForMysql(): " + getStartRnumForMysql());
	}
}