package org.zerock.domain;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PageMaker {
	private int totalCount; //sql전체 데이터개수
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	
	private int displayPageNum=10; //prev[1,2,3,4,5,6,7,8,9,10]next 10개
 	
	private Criteria cri;

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		
		this.totalCount = totalCount;
		
		calcData();
	}
	
	public void calcData() {
		
		endPage=(int) (Math.ceil(cri.getPage()/(double)displayPageNum)*displayPageNum); //cri:현재페이지
		startPage=(endPage-displayPageNum)+1;
		
		int tempEndPage=(int) (Math.ceil(totalCount/(double)cri.getPerPageNum())); //제일 마지막 page
		
		if(endPage>tempEndPage) { //endpage=10개 기준 마지막 page
			endPage=tempEndPage;
		}
		
		prev = startPage==1?false:true;
		next = endPage*cri.getPerPageNum()>=totalCount?false:true;
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

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}

	public Criteria getCri() {
		return cri;
	}

	public void setCri(Criteria cri) {
		this.cri = cri;
	}
	
	public String makeQuery(int page) {
		UriComponents uriComponents=UriComponentsBuilder.newInstance()
				  .queryParam("page", page)
				  .queryParam("perPageNum", cri.getPerPageNum())
				  .build();
		
		return uriComponents.toUriString();
	}
	
	public String makeSearch(int page) {
		UriComponents uriComponents=UriComponentsBuilder.newInstance()
				  .queryParam("page", page)
				  .queryParam("perPageNum", cri.getPerPageNum()).build();
				 // .queryParam("searchType", ((SearchCriteria)cri).getSearchType())
				 // .queryParam("keyword", encoding(((SearchCriteria)cri).getKeyword())).build();
				 	
		return uriComponents.toUriString();
	}
	
	private String encoding(String keyword) {
		if(keyword==null || keyword.trim().length()==0) {
			return "";
		}
		try {
			return URLEncoder.encode(keyword, "UTF-8");
		}catch(UnsupportedEncodingException e){
			return "";
		}
	}

	@Override
	public String toString() {
		return "PageMaker [totalCount=" + totalCount + ", startPage=" + startPage + ", endPage=" + endPage + ", prev="
				+ prev + ", next=" + next + ", displayPageNum=" + displayPageNum + ", cri=" + cri + "]";
	}	
}
