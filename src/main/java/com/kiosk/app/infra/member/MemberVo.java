package com.kiosk.app.infra.member;

public class MemberVo {
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

	private int startRnumForMysql = 0;							// 쿼리 시작 row
	
	
	private Integer shOption;
	private String shKeyword;
	private String seq;
	private String id;
	private String password;
	private String name;
	private String memberAddress;
	private String memberTel;
	private String salesType;
	private String companyAddress;
	private String companyTel;
	private String delNy;
	private String registerTime;

// ----------
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
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMemberAddress() {
		return memberAddress;
	}
	public void setMemberAddress(String memberAddress) {
		this.memberAddress = memberAddress;
	}
	public String getMemberTel() {
		return memberTel;
	}
	public void setMemberTel(String memberTel) {
		this.memberTel = memberTel;
	}
	public String getSalesType() {
		return salesType;
	}
	public void setSalesType(String salesType) {
		this.salesType = salesType;
	}
	public String getCompanyAddress() {
		return companyAddress;
	}
	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}
	public String getCompanyTel() {
		return companyTel;
	}
	public void setCompanyTel(String companyTel) {
		this.companyTel = companyTel;
	}
	public String getDelNy() {
		return delNy;
	}
	public void setDelNy(String delNy) {
		this.delNy = delNy;
	}
	

	
	
	public String getRegisterTime() {
		return registerTime;
	}
	public void setRegisterTime(String registerTime) {
		this.registerTime = registerTime;
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
